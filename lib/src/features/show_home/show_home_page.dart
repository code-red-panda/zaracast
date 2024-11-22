import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zaracast/src/features/latest_episodes/episode_list_tile.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/models/show_model.dart';
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
    _updatePalette();

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

  Future<void> _updatePalette() async {
    final show = shows[widget.id - 1];
    print('palette show id ${show.name}');
    final generator = await PaletteGenerator.fromImageProvider(
      CachedNetworkImageProvider(show.image),
      size: const Size(200, 200), // Smaller size for faster processing
    );
    print('generator null ${generator.runtimeType}');
    setState(() {
      _palette = generator;
    });
  }

  @override
  Widget build(BuildContext context) {
    final show = shows[widget.id - 1];
    final sortedEpisodes = episodes.where((e) => e.showId == widget.id).toList()
      ..sort((a, b) => b.date.compareTo(a.sort));

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
                              //height: 256,
                              // width: 256,
                              child: CachedNetworkImageBuilder(
                                image: show.image,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(show.name,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        Text('Jupiter Broadcasting',
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
            title: Text(show.name),
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
              return EpisodeListTile(sortedEpisodes[index]);
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
