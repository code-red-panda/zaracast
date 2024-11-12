import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
import 'package:zaracast/src/features/my_shows/show_card.dart';
import 'package:zaracast/src/models/show_model.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class MyShowsPage extends StatelessWidget {
  const MyShowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            leading: BackIconButton(),
            title: Text('My Shows'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: shows.length,
              itemBuilder: (context, index) {
                final show = shows[index];
                return InkWell(
                  onTap: () => context.push('/shows/${show.id}'),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Hero(
                            tag: 'show_image_${show.id}',
                            child: CachedNetworkImageBuilder(
                              image: show.image,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                show.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Technology',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 96),
          ),
        ],
      ),
    );
  }
}
