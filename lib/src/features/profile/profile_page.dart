import 'package:flutter/material.dart';
import 'package:zaracast/src/core/service_locator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar.large(
          title: Text('Profile'),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ListTile(
              title: const Text('Debug: Show all Shows'),
              onTap: () async {
                final shows = await db.getAllShows();
                print('Shows: $shows');
              },
            ),
            ListTile(
              title: const Text('Debug: Shows count'),
              onTap: () async {
                final shows = await db.getAllShows();
                print('Shows count: ${shows.length}');
              },
            ),
            ListTile(
              title: const Text('Debug: Show all Episodes'),
              onTap: () async {
                final episodes = await db.getAllEpisodes();
                print('Episodes: $episodes');
              },
            ),
            ListTile(
              title: const Text('Debug: Episodes count'),
              onTap: () async {
                final episodes = await db.getAllEpisodes();
                print('Episodes count: ${episodes.length}');
              },
            ),
            ListTile(
              title: const Text('Debug: Show all Followed Shows'),
              onTap: () async {
                final followed = await db.getAllShows();
                print('Followed Shows: $followed');
              },
            ),
            ListTile(
              title: const Text('Debug: Show all Played Episodes'),
              onTap: () async {
                final played = await db.getAllEpisodes();
                print('Played Episodes: $played');
              },
            ),
          ]),
        ),
      ],
    );
  }
}
