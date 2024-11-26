import 'package:flutter/material.dart';
import 'package:zaracast/src/core/service_locator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(title: Text('Settings')),
          SliverToBoxAdapter(
            child: TextButton(
                onPressed: () async {
                  final r = await api.searchPodcasts('linux');

                  print(r);
                },
                child: Text('SELECT * SHOWS')),
          )
        ],
      ),
    );
  }
}
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
              title: const Text('Debug: Show all Episodes'),
              onTap: () async {
                final episodes = await db.getAllEpisodes();
                print('Episodes: $episodes'); 
              },
            ),
            ListTile(
              title: const Text('Debug: Show all Followed Shows'),
              onTap: () async {
                final followed = await db.getAllFollowedShows();
                print('Followed Shows: $followed');
              },
            ),
            ListTile(
              title: const Text('Debug: Show all Played Episodes'),
              onTap: () async {
                final played = await db.getAllPlayedEpisodes();
                print('Played Episodes: $played');
              },
            ),
          ]),
        ),
      ],
    );
  }
}
