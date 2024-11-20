import 'package:flutter/material.dart';
import 'package:zaracast/src/features/latest_episodes/episode_list_tile.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/shared/icon_buttons/back_icon_button.dart';

class LatestEpisodesPage extends StatefulWidget {
  const LatestEpisodesPage({super.key});

  @override
  State<LatestEpisodesPage> createState() => _LatestEpisodesPageState();
}

class _LatestEpisodesPageState extends State<LatestEpisodesPage> {
  Set<int> _index = {0};

  Map<String, List<Episode>> _categorizeEpisodes(List<Episode> episodes) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final startOfWeek = today.subtract(Duration(days: today.weekday - 1));
    final startOfLastWeek = startOfWeek.subtract(const Duration(days: 7));
    final startOfMonth = DateTime(now.year, now.month, 1);
    final startOfLastMonth = DateTime(now.year, now.month - 1, 1);

    final result = <String, List<Episode>>{};
    final remainingEpisodes = List<Episode>.from(episodes);

    // Today
    final todayEpisodes = remainingEpisodes.where((e) {
      final date = DateTime.fromMillisecondsSinceEpoch(e.date * 1000);
      return date.year == today.year &&
          date.month == today.month &&
          date.day == today.day;
    }).toList();
    result['Today'] = todayEpisodes;
    remainingEpisodes.removeWhere(todayEpisodes.contains);

    // This Week
    final thisWeekEpisodes = remainingEpisodes.where((e) {
      final date = DateTime.fromMillisecondsSinceEpoch(e.date * 1000);
      return date.isAfter(startOfWeek.subtract(const Duration(days: 1))) &&
          date.isBefore(today);
    }).toList();
    result['This week'] = thisWeekEpisodes;
    remainingEpisodes.removeWhere(thisWeekEpisodes.contains);

    // Last Week
    final lastWeekEpisodes = remainingEpisodes.where((e) {
      final date = DateTime.fromMillisecondsSinceEpoch(e.date * 1000);
      return date.isAfter(startOfLastWeek.subtract(const Duration(days: 1))) &&
          date.isBefore(startOfWeek);
    }).toList();
    result['Last week'] = lastWeekEpisodes;
    remainingEpisodes.removeWhere(lastWeekEpisodes.contains);

    // This Month
    final thisMonthEpisodes = remainingEpisodes.where((e) {
      final date = DateTime.fromMillisecondsSinceEpoch(e.date * 1000);
      return date.isAfter(startOfMonth.subtract(const Duration(days: 1))) &&
          date.isBefore(startOfLastWeek);
    }).toList();
    result['This month'] = thisMonthEpisodes;
    remainingEpisodes.removeWhere(thisMonthEpisodes.contains);

    // Last Month
    final lastMonthEpisodes = remainingEpisodes.where((e) {
      final date = DateTime.fromMillisecondsSinceEpoch(e.date * 1000);
      return date.isAfter(startOfLastMonth.subtract(const Duration(days: 1))) &&
          date.isBefore(startOfMonth);
    }).toList();
    result['Last month'] = lastMonthEpisodes;

    return result;
  }

  @override
  Widget build(BuildContext context) {
    episodes.sort((a, b) => b.date.compareTo(a.date));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            leading: BackIconButton(),
            title: Text('Latest episodes'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: SegmentedButton<int>(
                emptySelectionAllowed: true,
                onSelectionChanged: (p0) => setState(() {
                  _index = p0;
                }),
                segments: const [
                  ButtonSegment(value: 0, label: Text('Unplayed')),
                  ButtonSegment(value: 1, label: Text('Played')),
                  ButtonSegment(value: 2, label: Text('Saved')),
                ],
                selected: _index,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final categorizedEpisodes = _categorizeEpisodes(episodes);
                final categories = [
                  'Today',
                  'This week',
                  'Last week',
                  'This month',
                  'Last month',
                ];
                final widgets = <Widget>[];

                for (final category in categories) {
                  final episodesInCategory =
                      categorizedEpisodes[category] ?? [];
                  if (episodesInCategory.isNotEmpty) {
                    widgets.add(
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Text(
                          category,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    );
                    for (var i = 0; i < episodesInCategory.length; i++) {
                      widgets.add(
                        Column(
                          children: [
                            EpisodeListTile(episodesInCategory[i]),
                            Visibility(
                              visible: i < episodesInCategory.length - 1,
                              replacement: const Divider(),
                              child: const Divider(indent: 16, endIndent: 24),
                            ),
                          ],
                        ),
                      );
                    }
                  }
                }

                if (index < widgets.length) {
                  return widgets[index];
                }
                return null;
              },
              // Approximate count including headers.
              childCount: episodes.length * 2,
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 96)),
        ],
      ),
    );
  }
}
