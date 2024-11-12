import 'package:flutter/material.dart';

class SaveIcon extends StatelessWidget {
  const SaveIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.save_rounded,
      color: Theme.of(context).colorScheme.outline,
      size: 16,
    );
  }
}
