import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 0.7,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Hero(
                              tag: 'show_image_${show.id}',
                              child: CachedNetworkImageBuilder(
                                image: show.image,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 85,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              subtitle: Text(
                                '6 days ago',
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              title: Text(
                                show.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
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
