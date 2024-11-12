import 'package:flutter/material.dart';

class AddedToQueueIcon extends StatelessWidget {
  const AddedToQueueIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.add_to_queue_rounded,
      color: Theme.of(context).colorScheme.outline,
      size: 16,
    );
  }
}
