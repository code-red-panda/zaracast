import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class EpisodeResponse {
  const EpisodeResponse({
    required this.status,
    required this.items,
    required this.count,
    this.description = '',
  });

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) {
    final items = (json['items'] as List<dynamic>)
        .map((item) {
          final itemJson = item as Map<String, dynamic>;
          return EpisodesCompanion.insert(
            id: Value(itemJson['id'] as int),
            title: itemJson['title'] as String,
            link: itemJson['link'] as String,
            datePublished: itemJson['datePublished'] as int,
            description: itemJson['description'] as String? ?? '',
            duration: itemJson['duration'] as int? ?? 0,
            image: itemJson['image'] as String? ?? '',
            showId: 0, // This needs to be set by the caller
          );
        })
        .toList();

    return EpisodeResponse(
      status: json['status'] as String? ?? '',
      items: items,
      count: json['count'] as int? ?? 0,
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final List<EpisodesCompanion> items;
  final int count;
  final String description;
}
