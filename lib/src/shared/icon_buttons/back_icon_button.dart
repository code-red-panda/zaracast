import 'package:flutter/material.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({this.color, super.key});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(Icons.arrow_back_rounded, color: color),
    );
  }
}
