import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:provider/provider.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/core/api/models/get_show_response.dart';
import 'package:zaracast/src/core/router/build_router.dart';
import 'package:zaracast/src/core/service_locator.dart';
import 'package:zaracast/src/features/latest_episodes/episode_list_tile.dart';
import 'package:zaracast/src/core/api/models/get_episodes_response.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/follow_show_icon_buttons.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';
import 'package:zaracast/src/state/my_provider.dart';

class ShowHomePage extends StatefulWidget {
  const ShowHomePage(this.showId, {super.key});

  final int showId;

  @override
  State<ShowHomePage> createState() => _ShowHomePageState();
}

class _ShowHomePageState extends State<ShowHomePage> {
  Set<int> _index = {0};
  bool _isLoading = true;
  final _scrollController = ScrollController();

  @override
  void initState() {
    _fetchShowIfNotExists();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  final sortedEpisodes = _notifier.episodes
    //  ..sort((a, b) => b.datePublished.compareTo(a.datePublished));

    print('show home build loading $_isLoading ${widget.showId}');

    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Provider(
        create: (context) => StreamProvider<Show?>(
          create: (context) => db.watchShow(widget.showId),
          initialData: null,
        ),
        child: Consumer<Show?>(
          builder: (context, show, child) {
            if (show == null) {
              print('show is null');
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              print(show.title);
              return Scaffold(
                body: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverAppBar.large(
                      actions: [_AppBarIconButtonVisibility(_scrollController)],
                      expandedHeight: MediaQuery.of(context).size.height,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  //Color.fromRGBO(r, g, b, opacity);
                                  //MyProvider.of<ShowHomePageNotifier>(context)._show.paletteColor;
                                  Colors.blueGrey.shade100,
                                  Theme.of(context).colorScheme.surface,
                                ],
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                left: 40,
                                right: 40,
                                top: 128,
                              ),
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
                                          image: show.image,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(show.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Text(show.author,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      ElevatedButton.icon(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .primary),
                                          foregroundColor:
                                              WidgetStatePropertyAll(
                                                  Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
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
                      title: Text(show.title),
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
                                    ButtonSegment(
                                        value: 0, label: Text('Unplayed')),
                                    ButtonSegment(
                                        value: 1, label: Text('Played')),
                                  ],
                                  selected: _index,
                                ),
                                TextButton.icon(
                                  icon: Icon(Icons.arrow_drop_down_rounded),
                                  iconAlignment: IconAlignment.end,
                                  label: Text(
                                    'Latest',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onPressed: () => print('sort date'),
                                  style: ButtonStyle(
                                      padding: WidgetStatePropertyAll(
                                          EdgeInsets.zero)),
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
                      itemCount: 0, //sortedEpisodes.length,
                      itemBuilder: (context, index) {
                        return Text('ep');
                        // return EpisodeListTile(
                        //sortedEpisodes[index],
                        // );
                      },
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 96)),
                  ],
                ),
              );
            }
          },
        ),
      );
    }
  }

  Future<void> _fetchShowIfNotExists() async {
    try {
      final showExists = await db.getShow(widget.showId);

      if (showExists == null) {
        print('show doesnt exist fetching and inserting');
        final getShowResponse = await api.getShowById(widget.showId);
        //final episodeResponse = await api.getEpisodesByFeedId(widget.showId);
        final show = getShowResponse.show;
        final episodes = <Episode>[];
        //episodeResponse.episodes;
        final palette = await PaletteGenerator.fromImageProvider(
          CachedNetworkImageProvider(show.image),
          size: const Size(200, 200), // Smaller size for faster processing
        );
        final color =
            palette.lightVibrantColor?.color ?? Colors.blueGrey.shade100;

        await db.insertShow(show.copyWith(paletteColor: color.value));
        await db.insertEpisodes(episodes);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load podcast: $e')),
        );
        context.pop();
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
    final t = await db.getShowTitle(widget.showId);
    print('show title from db: $t');
  }
}

class _AppBarIconButtonVisibility extends StatefulWidget {
  const _AppBarIconButtonVisibility(this.scrollController);

  final ScrollController scrollController;

  @override
  State<_AppBarIconButtonVisibility> createState() =>
      _AppBarIconButtonVisibilityState();
}

class _AppBarIconButtonVisibilityState
    extends State<_AppBarIconButtonVisibility> {
  bool _showIcons = false;
  double _thresholdToShowIcons = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final height = MediaQuery.of(context).size.height - 64;
      _setThreshold(height);
    });

    widget.scrollController.addListener(() {
      if (!_showIcons &&
          widget.scrollController.offset >= _thresholdToShowIcons) {
        _setShowIcons(true);
      } else if (_showIcons &&
          widget.scrollController.offset < _thresholdToShowIcons) {
        _setShowIcons(false);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _showIcons,
      child: const Padding(
        padding: EdgeInsets.only(right: 16),
        child: FollowShowIconButton(),
      ),
    );
  }

  void _setShowIcons(bool value) {
    setState(() {
      _showIcons = value;
    });
  }

  void _setThreshold(double height) {
    setState(() {
      _thresholdToShowIcons = height;
    });
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
