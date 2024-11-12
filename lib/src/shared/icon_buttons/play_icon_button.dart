import 'package:flutter/material.dart';

class PlayIconButton extends StatelessWidget {
  const PlayIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: IconButton(
        icon: const Icon(Icons.play_arrow_rounded),
        onPressed: () => print('play'),
      ),
    );
  }
}
