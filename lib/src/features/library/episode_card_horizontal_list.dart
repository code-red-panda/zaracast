import 'package:flutter/material.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/shared/icon_buttons/add_to_queue_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/mark_as_played_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_next_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class EpisodeCardHorizontalList extends StatelessWidget {
  const EpisodeCardHorizontalList(this.isContinueListening, {super.key});

  final bool isContinueListening;
  double get _maxCardHeight => 367;
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
                  padding: EdgeInsets.only(right: 4, top: 4),
                  child: Card(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          // Image height, should always match maxCardWidth to
                          // display as a square.
                          child: SizedBox(
                            height: _maxCardWidth,
                            child: CachedNetworkImageBuilder(
                              image: episodes[index].image,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8,
                            left: 16,
                            right: 16,
                            top: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                child: Text(
                                  episodes[index].name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyLarge,
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
                                  Visibility(
                                    visible: isContinueListening,
                                    child: const LinearProgressIndicator(
                                      value: .75,
                                    ),
                                  ),
                                  Text(
                                    isContinueListening ? '11m' : '4 hours ago',
                                    style: Theme.of(context).textTheme.bodySmall,
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
