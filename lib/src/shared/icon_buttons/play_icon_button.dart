import 'package:flutter/material.dart';

class PlayIconButton extends StatelessWidget {
  const PlayIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.play_arrow_rounded),
      onPressed: () => print('play'),
      visualDensity: VisualDensity.compact,
    );
  }
}
