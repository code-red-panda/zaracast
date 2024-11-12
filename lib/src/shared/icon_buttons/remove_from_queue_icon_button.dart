import 'package:flutter/material.dart';

class RemoveFromQueueIconButton extends StatelessWidget {
  const RemoveFromQueueIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.remove_from_queue_rounded),
      onPressed: () => print('remove from queue'),
      visualDensity: VisualDensity.compact,
    );
  }
}
