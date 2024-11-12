import 'package:flutter/material.dart';

class ReplayIconButton extends StatelessWidget {
  const ReplayIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.replay_rounded),
      onPressed: () => print('pause'),
      visualDensity: VisualDensity.compact,
    );
  }
}
