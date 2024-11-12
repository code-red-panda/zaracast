import 'package:flutter/material.dart';
import 'package:zaracast/src/core/functions/format_duration.dart';
import 'package:zaracast/src/core/functions/format_publish_date.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/shared/icon_buttons/add_to_queue_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/mark_as_played_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/pause_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/play_next_icon_button.dart';
import 'package:zaracast/src/shared/icon_buttons/replay_icon_button.dart';
import 'package:zaracast/src/shared/icons/added_to_queue_icon.dart';
import 'package:zaracast/src/shared/icons/played_icon.dart';
import 'package:zaracast/src/shared/icons/save_icon.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class EpisodeListTile extends StatelessWidget {
  const EpisodeListTile(this.episode, {super.key});

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(episode.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        color: Theme.of(context).colorScheme.primaryContainer,
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Save',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.save_rounded,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ],
        ),
      ),
      confirmDismiss: (direction) {
        print('saved');
        return Future.value(false); // Prevents dismissal
      },
      child: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: SizedBox(
                height: 56,
                width: 56,
                child: CachedNetworkImageBuilder(image: episode.image),
              ),
            ),
            subtitle: Text(formatDatePublished(episode.date)),
            title: Text(
              episode.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 16, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 56,
                    child: Column(
                      crossAxisAlignment: episode.isPlayed
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: !episode.isPlayed,
                          child: LinearProgressIndicator(
                            value: episode.durationRemaining / episode.duration,
                          ),
                        ),
                        Text(
                          episode.isPlayed
                              ? 'Played'
                              : formatDuration(episode.durationRemaining),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Visibility(
                    visible: true,
                    replacement: const PauseIconButton(),
                    child: episode.isPlayed
                        ? const ReplayIconButton()
                        : const PlayIconButton(),
                  ),
                  const SizedBox(width: 8),
                  Visibility(
                    visible: episode.sort == 0,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: PlayNextIconButton(),
                    ),
                  ),
                  Visibility(
                    visible: episode.sort == 0,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: AddToQueueIconButton(),
                    ),
                  ),
                  Visibility(
                    visible: !episode.isPlayed,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: MarkAsPlayedIconButton(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Visibility(
                    visible: episode.sort > 0,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: AddedToQueueIcon(),
                    ),
                  ),
                  Visibility(
                    visible: episode.isPlayed,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: PlayedIcon(),
                    ),
                  ),
                  Visibility(visible: episode.isSaved, child: const SaveIcon()),
                ],
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
