import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/shared/text/sliver_title_large.dart';
import 'package:zaracast/src/features/library/episode_card_horizontal_list.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar.large(title: Text('My Library')),
        SliverToBoxAdapter(
          child: ListTile(
            leading: const Icon(Icons.podcasts),
            onTap: () => context.push('/shows'),
            title: Text(
              'Shows',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
        const SliverToBoxAdapter(child: Divider(indent: 16, endIndent: 24)),
        SliverToBoxAdapter(
          child: ListTile(
            leading: const Icon(Icons.list_rounded),
            onTap: () => context.push('/episodes'),
            title: Text(
              'Episodes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
        const SliverToBoxAdapter(child: Divider(indent: 16, endIndent: 24)),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverTitleLarge('Latest From Your Shows'),
        const EpisodeCardHorizontalList(false),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverTitleLarge('Continue Listening'),
        const EpisodeCardHorizontalList(true),
        const SliverToBoxAdapter(child: SizedBox(height: 96)),
      ],
    );
  }
}
