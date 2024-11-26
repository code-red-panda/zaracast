import 'package:cached_network_image/cached_network_image.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/core/api/models/feed_response.dart';
import 'package:zaracast/src/core/service_locator.dart';
import 'package:zaracast/src/features/latest_episodes/episode_list_tile.dart';
import 'package:zaracast/src/core/api/models/episode_response.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/follow_show_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class ShowHomePage extends StatefulWidget {
  const ShowHomePage(this.id, {super.key});

  final int id;

  @override
  State<ShowHomePage> createState() => _ShowHomePageState();
}

class _ShowHomePageState extends State<ShowHomePage> {
  Set<int> _index = {0};

  PaletteGenerator? _palette;
  Feed? _feed;
  List<EpisodeItem> _episodes = [];
  bool _isLoading = true;

  final _scrollController = ScrollController();
  var _showIcons = false;
  double _threshold = 0;

  void _setThreshold(double height) {
    setState(() {
      _threshold = height;
    });
  }

  @override
  void initState() {
    _loadFeed();

    WidgetsBinding.instance.addPostFrameCallback(
        (_) => _setThreshold(MediaQuery.of(context).size.height - 64));

    _scrollController.addListener(() {
      if (!_showIcons && _scrollController.offset >= _threshold) {
        print('show icons');
        setState(() {
          _showIcons = true;
        });
      } else if (_showIcons && _scrollController.offset < _threshold) {
        print('hid icons');
        setState(() {
          _showIcons = false;
        });
      }
    });
    super.initState();
  }

  Future<void> _loadFeed() async {
    try {
      final feedResponse = await api.getFeedById(widget.id);
      final episodeResponse = await api.getEpisodesByFeedId(widget.id);
      final generator = await PaletteGenerator.fromImageProvider(
        CachedNetworkImageProvider(feedResponse.feed.image),
        size: const Size(200, 200), // Smaller size for faster processing
      );

      // Insert show and episodes into database
      await db.insertShow(ShowsCompanion.insert(
        id: drift.Value(feedResponse.feed.id),
        name: feedResponse.feed.title,
        image: feedResponse.feed.image,
        author: feedResponse.feed.author,
        description: feedResponse.feed.description,
        lastUpdateTime: feedResponse.feed.lastUpdateTime,
        episodeCount: feedResponse.feed.episodeCount,
        url: feedResponse.feed.url,
        link: feedResponse.feed.link,
        artwork: feedResponse.feed.artwork,
        paletteColor: drift.Value(generator.dominantColor?.color.value),
      ));

      await db.insertEpisodes(
        episodeResponse.items.map((item) => EpisodesCompanion.insert(
          id: drift.Value(item.id),
          title: item.title,
          description: item.description,
          image: item.image,
          duration: item.duration,
          datePublished: item.datePublished,
          link: item.link,
          showId: feedResponse.feed.id,
        )).toList(),
      );

      setState(() {
        _feed = feedResponse.feed;
        _episodes = episodeResponse.items;
        _palette = generator;
        _isLoading = false;
      });

    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load podcast: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (_feed == null) {
      return Scaffold(
        appBar: AppBar(
          leading: const BackIconButton(),
        ),
        body: const Center(
          child: Text('Failed to load podcast'),
        ),
      );
    }

    final sortedEpisodes = _episodes..sort((a, b) => b.datePublished.compareTo(a.datePublished));

    final double _expandedHeight = MediaQuery.of(context).size.height;
    print('expanded heigh $_expandedHeight');

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar.large(
            actions: [
              Visibility(
                visible: _showIcons,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: FollowShowIconButton(),
                ),
              )
            ],
            expandedHeight: _expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        _palette?.lightVibrantColor?.color ??
                            Colors.blueGrey.shade100,
                        Theme.of(context).colorScheme.surface,
                      ],
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 0, left: 40, right: 40, top: 128),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 20,
                                offset: const Offset(0, 8),
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: SizedBox(
                              child: CachedNetworkImageBuilder(
                                image: _feed!.image,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(_feed!.title,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        Text(_feed!.author,
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            ElevatedButton.icon(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Theme.of(context).colorScheme.primary),
                                foregroundColor: WidgetStatePropertyAll(
                                    Theme.of(context).colorScheme.onPrimary),
                              ),
                              onPressed: () => print('play'),
                              icon: Icon(Icons.play_arrow_rounded),
                              label: const Text('Play latest'),
                            ),
                            IconButton(
                                onPressed: () => print('info'),
                                icon: Icon(Icons.info_outlined)),
                            FollowShowIconButton()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
                //color: Colors.transparent,
                onPressed: Navigator.of(context).pop,
                icon: Icon(Icons.arrow_back_rounded)),
            title: Text(_feed!.title),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SegmentedButton<int>(
                        emptySelectionAllowed: true,
                        onSelectionChanged: (p0) => setState(() {
                          _index = p0;
                        }),
                        segments: const [
                          ButtonSegment(value: 0, label: Text('Unplayed')),
                          ButtonSegment(value: 1, label: Text('Played')),
                        ],
                        selected: _index,
                      ),
                      TextButton.icon(
                        icon: Icon(Icons.arrow_drop_down_rounded),
                        iconAlignment: IconAlignment.end,
                        label: Text(
                          'Latest',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        onPressed: () => print('sort date'),
                        style: ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList.separated(
            separatorBuilder: (context, index) => const Divider(
              indent: 16,
              endIndent: 16,
            ),
            itemCount: sortedEpisodes.length,
            itemBuilder: (context, index) {
              return EpisodeListTile(sortedEpisodes[index], showImage: _feed!.image);
            },
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 96)),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.child,
  });

  final Widget child;

  @override
  double get minExtent => 64;

  @override
  double get maxExtent => 64;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
