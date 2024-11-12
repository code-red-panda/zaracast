import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonalIcon(
      icon: const Icon(Icons.play_arrow_rounded),
      label: Text(
        '1h 57m',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      onPressed: () => print('play'),
      // Override the M3 sizing as this button's nature is to be a smaller
      // utility.
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(left: 4, right: 8),
        ),
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
