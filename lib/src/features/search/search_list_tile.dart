import 'package:flutter/material.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile(
    this.name,
    this.image, {
    this.subtitle = '',
    super.key,
  });

  final String name;
  final String image;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.only(left: 16, right: 16),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: SizedBox(
          height: 56,
          width: 56,
          child: CachedNetworkImageBuilder(image: image),
        ),
      ),
      subtitle: Text(subtitle),
      title: Text(
        name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
          onPressed: () => 'go to show',
          icon: Icon(Icons.arrow_forward_rounded)),
    );
  }
}
