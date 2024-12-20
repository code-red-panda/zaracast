import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/core/service_locator.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class FollowedShowsPage extends StatefulWidget {
  const FollowedShowsPage({super.key});

  @override
  State<FollowedShowsPage> createState() => _FollowedShowsPageState();
}

class _FollowedShowsPageState extends State<FollowedShowsPage> {
  final Map<int, PaletteGenerator?> _palettes = {};

  Future<void> _updatePalette(Show show) async {
    final generator = await PaletteGenerator.fromImageProvider(
      NetworkImage(show.image),
      size: const Size(200, 200), // Smaller size for faster processing
    );
    setState(() {
      _palettes[show.id] = generator;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            leading: BackIconButton(),
            title: Text('Shows'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: StreamBuilder<List<Show>>(
              stream: db.watchFollowedShows(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print('watch followed shows has error ${snapshot.error}');
                }

                print(
                    'watch followed shows stream builder ${snapshot.data?.length}');
                final shows = snapshot.data ?? [];

                return SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    childAspectRatio: 1,
                  ),
                  itemCount: shows.length,
                  itemBuilder: (context, index) {
                    final show = shows[index];
                    return InkWell(
                      onTap: () => context.push('/show/${show.id}'),
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: CachedNetworkImageBuilder(image: show.image)),
                    );
                  },
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
