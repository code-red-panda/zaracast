import 'package:flutter/material.dart';

class PlayNextIconButton extends StatelessWidget {
  const PlayNextIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.queue_play_next),
      onPressed: () => print('play next'),
      visualDensity: VisualDensity.compact,
    );
  }
}
