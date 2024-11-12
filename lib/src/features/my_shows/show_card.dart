import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zaracast/src/models/show_model.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class ShowCard extends StatelessWidget {
  const ShowCard(
    this.show, {
    super.key,
  });

  final Show show;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('/shows/${show.id}'),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImageBuilder(image: show.image),
        ),
      ),
    );
  }
}