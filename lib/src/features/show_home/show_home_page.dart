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
  final double _expandedHeight = 490;
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
            expandedHeight: _expandedHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        _palette?.darkVibrantColor?.color?.withOpacity(0.9) ??
                            Colors.black,
                        _palette?.darkMutedColor?.color?.withOpacity(0.7) ??
                            Colors.black87,
                        _palette?.dominantColor?.color?.withOpacity(0.8) ??
                            Colors.black54,
                      ],
                      stops: const [0.1, 0.5, 0.9],
                    ).createShader(bounds),
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            _palette?.darkVibrantColor?.color
                                    ?.withOpacity(0.5) ??
                                Colors.black54,
                            _palette?.dominantColor?.color?.withOpacity(0.3) ??
                                Colors.black38,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
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
                          height: 256,
                          width: 256,
                          child: CachedNetworkImageBuilder(
                            image: show.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton.filledTonal(
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
