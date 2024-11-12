import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zaracast/src/models/show_model.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';
import 'package:zaracast/src/shared/images/cached_network_image_builder.dart';

class FollowedShowsPage extends StatefulWidget {
  const FollowedShowsPage({super.key});

  @override
  State<FollowedShowsPage> createState() => _FollowedShowsPageState();
}

class _FollowedShowsPageState extends State<FollowedShowsPage> {
  final Map<int, PaletteGenerator?> _palettes = {};

  @override
  void initState() {
    super.initState();
    for (var show in shows) {
      _updatePalette(show);
    }
  }

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
            sliver: SliverGrid.builder(
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
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(show.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              _palettes[show.id]?.darkMutedColor?.color?.withOpacity(0.6) ?? 
                                  Colors.transparent,
                              _palettes[show.id]?.dominantColor?.color?.withOpacity(0.9) ?? 
                                  Colors.black.withOpacity(0.9),
                            ],
                            stops: const [0.6, 0.8, 1.0],
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, right: 8),
                            child: Text(
                              '6 days ago',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
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
