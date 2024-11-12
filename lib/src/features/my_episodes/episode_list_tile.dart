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
        return Future.value(false);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: SizedBox(
          height: 128,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Large show artwork
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 128,
                  width: 128,
                  child: CachedNetworkImageBuilder(image: episode.image),
                ),
              ),
              // Episode details and controls
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      episode.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      formatDatePublished(episode.date),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: episode.durationRemaining / episode.duration,
                          ),
                        ),
                        //const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            formatDuration(episode.durationRemaining),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // const SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    // child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        PlayIconButton(),
                        PlayNextIconButton(),
                        AddToQueueIconButton(),
                        MarkAsPlayedIconButton(),
                      ],
                      //   ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
