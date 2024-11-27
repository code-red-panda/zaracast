import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class FeedResponse {
  const FeedResponse({
    required this.status,
    required this.feed,
    required this.description,
  });

  factory FeedResponse.fromJson(Map<String, dynamic> json) {
    final feedJson = json['feed'] as Map<String, dynamic>;
    
    final categories = <String, String>{};
    final categoriesJson = feedJson['categories'] as Map<String, dynamic>?;
    if (categoriesJson != null) {
      categories.addAll(categoriesJson.map(
        (key, value) => MapEntry(key, value.toString()),
      ));
    }

    return FeedResponse(
      status: json['status'] as String? ?? '',
      feed: ShowsCompanion.insert(
        id: Value(feedJson['id'] as int),
        name: feedJson['title'] as String,
        url: feedJson['url'] as String,
        link: feedJson['link'] as String? ?? '',
        description: feedJson['description'] as String? ?? '',
        author: feedJson['author'] as String? ?? '',
        image: feedJson['image'] as String? ?? '',
        artwork: feedJson['artwork'] as String? ?? '',
        lastUpdateTime: feedJson['lastUpdateTime'] as int? ?? 0,
        episodeCount: feedJson['episodeCount'] as int? ?? 0,
      ),
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final ShowsCompanion feed;
  final String description;
}
