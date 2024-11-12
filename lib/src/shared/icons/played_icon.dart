import 'package:flutter/material.dart';

class PlayedIcon extends StatelessWidget {
  const PlayedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.done_rounded,
      color: Theme.of(context).colorScheme.outline,
      size: 16,
    );
  }
}
