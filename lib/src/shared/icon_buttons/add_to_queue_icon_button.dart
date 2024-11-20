import 'package:flutter/material.dart';

class AddToQueueIconButton extends StatelessWidget {
  const AddToQueueIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.add_to_queue),
      iconSize: 16,
      onPressed: () => print('add to queue'),
      visualDensity: VisualDensity.compact,
    );
  }
}
