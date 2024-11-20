import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/features/library/episode_card_horizontal_list.dart';
import 'package:zaracast/src/shared/text/sliver_title_large.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar.large(title: Text('Library')),
        const SliverTitleLarge('Latest from your shows'),
        const EpisodeCardHorizontalList(false),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverTitleLarge('Continue listening'),
        const EpisodeCardHorizontalList(true),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverToBoxAdapter(
          child: ListTile(
            leading: Icon(
              Icons.podcasts_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () => context.push('/library/my-shows'),
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
            leading: Icon(
              Icons.list_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            onTap: () => context.push('/library/latest-episodes'),
            title: Text(
              'Latest episodes',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            trailing: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 96)),
      ],
    );
  }
}
