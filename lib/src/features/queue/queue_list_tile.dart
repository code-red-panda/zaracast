import 'package:flutter/material.dart';
import 'package:zaracast/src/core/functions/format_duration.dart';
import 'package:zaracast/src/core/functions/format_publish_date.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class QueueListTile extends StatelessWidget {
  const QueueListTile(
    this.episode,
    this.index, {
    super.key,
    required this.onDismissed,
  });

  final Episode episode;
  final int index;
  final void Function(DismissDirection) onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(episode.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        color: Colors.red,
        padding: const EdgeInsets.only(right: 16.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Remove',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.remove_circle_outline,
              color: Colors.white,
            ),
          ],
        ),
      ),
      child: ListTile(
        selected: index == 0,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: SizedBox(
            height: 56,
            width: 56,
            child: CachedNetworkImageBuilder(image: episode.image),
          ),
        ),
        subtitle: Text(formatDuration(episode.duration)),
        title: Text(
          episode.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: ReorderableDragStartListener(
          index: index,
          child: const Icon(Icons.drag_indicator_rounded),
        ),
      ),
    );
  }
}
