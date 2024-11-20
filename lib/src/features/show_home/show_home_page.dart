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
  final double _expandedHeight = 500;
  PaletteGenerator? _palette;

  @override
  void initState() {
    super.initState();
    _updatePalette();
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

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: FollowShowIconButton(),
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
                        bottom: 8,
                        left: 64,
                        right: 64,
                        top: _expandedHeight * .25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              child: Container(
                                //alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
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
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(show.name,
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            ),
                            //?.copyWith(fontWeight: FontWeight)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text('Jupiter Broadcasting',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: ElevatedButton.icon(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Theme.of(context)
                                              .colorScheme
                                              .primary),
                                      foregroundColor: WidgetStatePropertyAll(
                                          Theme.of(context)
                                              .colorScheme
                                              .onPrimary),
                                    ),
                                    onPressed: () => print('play'),
                                    icon: Icon(Icons.play_arrow_rounded),
                                    label: const Text('Play latest'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#technology',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              '#news',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              'Episodes: 441',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
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
              endIndent: 24,
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
