import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zaracast/src/core/service_locator.dart';
import 'package:zaracast/src/features/show_home/show_home_page.dart';

class FollowShowIconButton extends StatelessWidget {
  const FollowShowIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    final show = context.read<ShowHomePageNotifier>().show;

    if (show == null) {
      return const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      );
    }

    return StreamBuilder<bool?>(
      stream: db.watchShowIsFollowed(show.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('follow show icon button error ${snapshot.error}');
        }

        var isFollowed = false;

        if (snapshot.hasData && snapshot.data != null) {
          isFollowed = snapshot.data!;
        }

        return Visibility(
          visible: isFollowed,
          replacement: IconButton(
            icon: const Icon(Icons.library_add_rounded),
            onPressed: () async => db.updateShowsIsFollowed(show.id),
            visualDensity: VisualDensity.compact,
          ),
          child: IconButton(
            icon: const Icon(Icons.library_add_check_outlined),
            onPressed: () async =>
                db.updateShowsIsFollowed(show.id, follow: false),
            visualDensity: VisualDensity.compact,
          ),
        );
      },
    );
  }
}
