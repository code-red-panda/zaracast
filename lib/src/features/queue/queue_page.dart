import 'package:flutter/material.dart';
import 'package:zaracast/src/features/queue/queue_list_tile.dart';
import 'package:zaracast/src/core/delete/models/episode_model.dart';

class QueuePage extends StatelessWidget {
  const QueuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
/*
class QueuePage extends StatefulWidget {
  const QueuePage({super.key});

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  late List<Episode> sortedEpisodes;

  @override
  void initState() {
    _updateSortedEpisodes();
    super.initState();
  }

  void _updateSortedEpisodes() {
    sortedEpisodes = episodes.where((e) => e.sort > 0).toList()
      ..sort((a, b) => a.sort.compareTo(b.sort));
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final Episode item = sortedEpisodes.removeAt(oldIndex);
      sortedEpisodes.insert(newIndex, item);

      // Update sort values to reflect new order
      for (var i = 0; i < sortedEpisodes.length; i++) {
        final episode = sortedEpisodes[i];
        episodes = episodes.map((e) {
          if (e.id == episode.id) {
            return Episode(
              id: e.id,
              name: e.name,
              showId: e.showId,
              date: e.date,
              duration: e.duration,
              durationRemaining: e.durationRemaining,
              image: e.image,
              isPlayed: e.isPlayed,
              isSaved: e.isSaved,
              sort: i + 1,
            );
          }
          return e;
        }).toList();
      }
      _updateSortedEpisodes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(title: Text('Queue')),
          SliverReorderableList(
            itemCount: sortedEpisodes.length,
            onReorderStart: (index) {},
            proxyDecorator: (child, index, animation) {
              return Material(
                elevation: 0,
                color: Theme.of(context).colorScheme.surface,
                child: child,
              );
            },
            itemBuilder: (context, index) {
              final isLastItem = index == sortedEpisodes.length - 1;
              return Column(
                key: ValueKey(sortedEpisodes[index].id),
                children: [
                  QueueListTile(
                    sortedEpisodes[index],
                    index,
                    onDismissed: (direction) {
                      final removedEpisode = sortedEpisodes[index];
                      setState(() {
                        // First update the episodes list
                        episodes = episodes.map((e) {
                          if (e.id == removedEpisode.id) {
                            return Episode(
                              id: e.id,
                              name: e.name,
                              showId: e.showId,
                              date: e.date,
                              duration: e.duration,
                              durationRemaining: e.durationRemaining,
                              image: e.image,
                              isPlayed: e.isPlayed,
                              isSaved: e.isSaved,
                              sort: 0,
                            );
                          }
                          return e;
                        }).toList();

                        // Then remove from sorted episodes
                        sortedEpisodes.removeAt(index);

                        // Update remaining sort values
                        for (var i = 0; i < sortedEpisodes.length; i++) {
                          final episode = sortedEpisodes[i];
                          episodes = episodes.map((e) {
                            if (e.id == episode.id) {
                              return Episode(
                                id: e.id,
                                name: e.name,
                                showId: e.showId,
                                date: e.date,
                                duration: e.duration,
                                durationRemaining: e.durationRemaining,
                                image: e.image,
                                isPlayed: e.isPlayed,
                                isSaved: e.isSaved,
                                sort: i + 1,
                              );
                            }
                            return e;
                          }).toList();
                        }
                      });
                    },
                  ),
                ],
              );
            },
            onReorder: _onReorder,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 96)),
        ],
      ),
    );
  }
}
*/