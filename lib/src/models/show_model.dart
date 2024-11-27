// This should have everything form search and get podcast and reduce whats needed in the table
// stay in sync with Shows table.
import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class ShowModel {
  const ShowModel({
    required this.id,
    required this.podcastGuid,
    required this.title,
    this.url = '',
    this.link = '',
    this.description = '',
    this.author = '',
    this.image = '',
    this.lastUpdateTime = 0,
    this.explicit = false,
    this.medium = '',
    this.dead = 0,
    this.episodeCount = 0,
    this.categories = const {},
  });

  factory ShowModel.fromJson(Map<String, dynamic> json) {
    final categories = <String, String>{};
    final categoriesJson = json['categories'] as Map<String, dynamic>?;

    if (categoriesJson != null) {
      categories.addAll(
        categoriesJson.map((key, value) => MapEntry(key, value.toString())),
      );
    }

    return ShowModel(
      id: json['id'] as int,
      podcastGuid: json['podcastGuid'] as String,
      title: json['title'] as String,
      url: json['url'] as String? ?? '',
      link: json['link'] as String? ?? '',
      description: json['description'] as String? ?? '',
      author: json['author'] as String? ?? '',
      image: json['image'] as String? ?? '',
      lastUpdateTime: json['lastUpdateTime'] as int? ?? 0,
      explicit: json['explicit'] as bool? ?? false,
      medium: json['medium'] as String? ?? '',
      dead: json['dead'] as int? ?? 0,
      episodeCount: json['episodeCount'] as int? ?? 0,
      categories: categories,
    );
  }

  final int id;
  final String podcastGuid;
  final String title;
  final String url;
  final String link;
  final String description;
  final String author;
  final String image;
  final int lastUpdateTime;
  final bool explicit;
  final String medium;
  final int dead;
  final int episodeCount;
  final Map<String, String> categories;

  ShowsCompanion toShowCompanion() => ShowsCompanion.insert(
        id: Value<int>(id),
        podcastGuid: podcastGuid,
        title: title,
        url: url,
        link: link,
        description: description,
        author: author,
        image: image,
        lastUpdateTime: lastUpdateTime,
        explicit: explicit,
        categories: categories,
      );
}
