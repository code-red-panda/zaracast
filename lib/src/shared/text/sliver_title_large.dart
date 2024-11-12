import 'package:flutter/material.dart';

class SliverTitleLarge extends StatelessWidget {
  const SliverTitleLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
