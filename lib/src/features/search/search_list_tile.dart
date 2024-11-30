import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/core/api/models/search_shows_response.dart';
import 'package:zaracast/src/core/functions/format_publish_date.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile(this.show, {super.key});

  final SearchShowsModel show;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Badge(
        isLabelVisible: show.explicit,
        label: const Text('E'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: SizedBox(
            height: 56,
            width: 56,
            child: CachedNetworkImageBuilder(image: show.image),
          ),
        ),
      ),
      onTap: () => context.push('/show/${show.id}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formatDatePublished(show.newestItemPubdate),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            show.categories.values.take(2).map((e) => '#$e').join(' '),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      title: Text(
        show.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        onPressed: () => context.push('/show/${show.id}'),
        icon: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
