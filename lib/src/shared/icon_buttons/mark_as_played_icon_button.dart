import 'package:flutter/material.dart';

class MarkAsPlayedIconButton extends StatelessWidget {
  const MarkAsPlayedIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(Icons.done_rounded),
      onPressed: () => print('mark played'),
      visualDensity: VisualDensity.compact,
    );
  }
}
