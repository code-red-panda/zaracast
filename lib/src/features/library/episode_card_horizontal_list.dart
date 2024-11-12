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
            itemBuilder: (context, index) {
              return SizedBox(
                width: _maxCardWidth,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Card(
                    child: Container(
                      height: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: CachedNetworkImageProvider(episodes[index].image),
                          fit: BoxFit.cover,
                          targetHeight: 275,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                              Colors.black.withOpacity(0.9),
                            ],
                            stops: const [0.55, 0.65, 1.0],
                          ),
                        ),
                        child: Column(
                          children: [
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 8,
                                left: 16,
                                right: 16,
                                top: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Text(
                                      episodes[index].name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 4),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            PlayIconButton(),
                                            PlayNextIconButton(),
                                            AddToQueueIconButton(),
                                            MarkAsPlayedIconButton(),
                                          ],
                                        ),
                                      ),
                                      if (isContinueListening) ...[
                                        const SizedBox(height: 8),
                                        LinearProgressIndicator(
                                          value: .75,
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .surfaceVariant,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      ],
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Text(
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: episodes.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
