import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'dart:ui';
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
  final double _expandedHeight = 440;
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
          SliverAppBar(
            expandedHeight: _expandedHeight,
            pinned: true,
            stretch: true,
            //backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [StretchMode.blurBackground],
              background: Stack(
                children: [
                  Stack(
                    children: [
                      CachedNetworkImageBuilder(
                        image: show.image,
                        height: _expandedHeight - 100,
                      ),
                      Container(
                        height: _expandedHeight - 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              _palette?.dominantColor?.color.withOpacity(0.85) ??
                                  Colors.black.withOpacity(0.85),
                            ],
                            stops: const [0.2, 0.8],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: (_expandedHeight - 100) * 0.15, // 15% of image height
                        child: ClipRect(
                          child: Stack(
                            children: [
                              BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                                child: Container(color: Colors.transparent),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      _palette?.dominantColor?.color.withOpacity(0.3) ??
                                          Colors.black.withOpacity(0.3),
                                      _palette?.dominantColor?.color ?? Colors.black,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    show.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '#Technology',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            FilledButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.play_arrow_rounded),
                              label: const Text('Play latest'),
                            ),
                            const SizedBox(width: 12),
                            const FollowShowIconButton(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: const BackIconButton(color: Colors.white),
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
