import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/shared/icon_buttons/add_to_queue_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/mark_as_played_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_next_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class EpisodeCardHorizontalList extends StatelessWidget {
  const EpisodeCardHorizontalList(this.isContinueListening, {super.key});

  final bool isContinueListening;
  double get _maxCardHeight => 325;
  double get _maxCardWidth => 225;

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
                          height: 275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(episodes[index].image),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(.6),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PlayIconButton(),
                                    PlayNextIconButton(),
                                    AddToQueueIconButton(),
                                    MarkAsPlayedIconButton(),
                                  ],
                                ),
                                if (isContinueListening) ...[
                                  const SizedBox(height: 8),
                                  LinearProgressIndicator(
                                    value: .75,
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ],
                                Text(
                                  isContinueListening
                                      ? '11m remaining'
                                      : '4 hours ago',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: Colors.white,
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
