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
