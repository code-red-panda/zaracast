import 'package:flutter/material.dart';

class FollowShowIconButton extends StatelessWidget {
  const FollowShowIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.library_add_check_rounded),
      onPressed: () => print('follow'),
      //visualDensity: VisualDensity.compact,
    );
  }
}
