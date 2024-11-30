import 'package:zaracast/src/core/database/app_database.dart';

class GetEpisodesResponse {
  const GetEpisodesResponse({
    required this.status,
    required this.episodes,
  });

  factory GetEpisodesResponse.fromJson(Map<String, dynamic> json) {
    final episodes = <Episode>[];
    final episodesJson = json['items'] as List<Map<String, dynamic>>?;

    if (episodesJson != null) {
      for (final e in episodesJson) {
        episodes.add(Episode.fromJson(e));
      }
    }

    return GetEpisodesResponse(
      status: json['status'] as String? ?? '',
      episodes: episodes,
    );
  }

  final String status;
  final List<Episode> episodes;
}
