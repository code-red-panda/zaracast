import 'package:flutter/material.dart';

class PauseIconButton extends StatelessWidget {
  const PauseIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.pause_rounded),
      onPressed: () => print('pause'),
      visualDensity: VisualDensity.compact,
    );
  }
}
