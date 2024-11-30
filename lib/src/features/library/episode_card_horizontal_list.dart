import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zaracast/src/core/delete/models/episode_model.dart';
import 'package:zaracast/src/shared/icon_buttons/add_to_queue_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/mark_as_played_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_next_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

/*
class EpisodeCardHorizontalList extends StatefulWidget {
  const EpisodeCardHorizontalList(this.isContinueListening, {super.key});

  final bool isContinueListening;

  @override
  State<EpisodeCardHorizontalList> createState() =>
      _EpisodeCardHorizontalListState();
}

class _EpisodeCardHorizontalListState extends State<EpisodeCardHorizontalList> {
  final Map<int, PaletteGenerator?> _palettes = {};

  double get _maxCardHeight => 325;
  double get _maxCardWidth => 225;

  @override
  void initState() {
    super.initState();
    for (var episode in episodes) {
      _updatePalette(episode);
    }
  }

  Future<void> _updatePalette(Episode episode) async {
    final generator = await PaletteGenerator.fromImageProvider(
      NetworkImage(episode.image),
      size: const Size(200, 200), // Smaller size for faster processing
    );
    setState(() {
      _palettes[episode.id] = generator;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: _maxCardHeight,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: episodes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: _maxCardWidth,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Card(
                    color: Colors.black,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                episodes[index].image,
                              ),
                              fit: BoxFit.cover,
                              // alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                _palettes[episodes[index].id]
                                        ?.darkMutedColor
                                        ?.color
                                        ?.withOpacity(0.6) ??
                                    Colors.black.withOpacity(0.6),
                                _palettes[episodes[index].id]
                                        ?.dominantColor
                                        ?.color ??
                                    Colors.black,
                              ],
                              stops: const [0.65, 0.75, 1.0],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8,
                              left: 16,
                              right: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  episodes[index].name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(color: Colors.white),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PlayIconButton(),
                                    PlayNextIconButton(),
                                    AddToQueueIconButton(),
                                    MarkAsPlayedIconButton(),
                                  ],
                                ),
                                if (widget.isContinueListening) ...[
                                  const SizedBox(height: 8),
                                  LinearProgressIndicator(
                                    value: .75,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    widget.isContinueListening
                                        ? '11m remaining'
                                        : '4 hours ago',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
*/