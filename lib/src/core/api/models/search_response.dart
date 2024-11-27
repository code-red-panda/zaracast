import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class SearchResponse {
  const SearchResponse({
    required this.status,
    required this.feeds,
    required this.count,
    this.description = '',
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    final feeds = (json['feeds'] as List<dynamic>)
        .map((feed) {
          final feedJson = feed as Map<String, dynamic>;
          final categories = <String, String>{};
          final categoriesJson = feedJson['categories'] as Map<String, dynamic>?;
          if (categoriesJson != null) {
            categories.addAll(categoriesJson.map(
              (key, value) => MapEntry(key, value.toString()),
            ));
          }

          return ShowsCompanion.insert(
            id: Value(feedJson['id'] as int),
            name: feedJson['title'] as String,
            url: feedJson['url'] as String,
            description: feedJson['description'] as String? ?? '',
            author: feedJson['author'] as String? ?? '',
            image: feedJson['image'] as String? ?? '',
            lastUpdateTime: feedJson['lastUpdateTime'] as int? ?? 0,
            episodeCount: feedJson['episodeCount'] as int? ?? 0,
            link: '',
            artwork: '',
          );
        })
        .toList();

    return SearchResponse(
      status: json['status'] as String,
      feeds: feeds,
      count: json['count'] as int,
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final List<ShowsCompanion> feeds;
  final int count;
  final String description;
}
