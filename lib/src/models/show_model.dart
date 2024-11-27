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
    this.ownerName = '',
    this.image = '',
    this.artwork = '',
    this.lastUpdateTime = 0,
    this.explicit = false,
    this.type = '',
    this.medium = '',
    this.language = '',
    this.episodeCount = 0,
    this.crawlErrors = 0,
    this.categories = const {},
    this.dead = 0,
    this.contentType = '',
    this.generator = '',
    this.newestItemPubdate = '',
    this.oldestItemPubdate = '',
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
      ownerName: json['ownerName'] as String? ?? '',
      image: json['image'] as String? ?? '',
      artwork: json['artwork'] as String? ?? '',
      lastUpdateTime: json['lastUpdateTime'] as int? ?? 0,
      explicit: json['explicit'] as bool? ?? false,
      type: json['type'] as String? ?? '',
      medium: json['medium'] as String? ?? '',
      language: json['language'] as String? ?? '',
      episodeCount: json['episodeCount'] as int? ?? 0,
      crawlErrors: json['crawlErrors'] as int? ?? 0,
      categories: categories,
      dead: json['dead'] as int? ?? 0,
      contentType: json['contentType'] as String? ?? '',
      generator: json['generator'] as String? ?? '',
      newestItemPubdate: json['newestItemPubdate'] as String? ?? '',
      oldestItemPubdate: json['oldestItemPubdate'] as String? ?? '',
    );
  }

  final int id;
  final String podcastGuid;
  final String title;
  final String url;
  final String link;
  final String description;
  final String author;
  final String ownerName;
  final String image;
  final String artwork;
  final int lastUpdateTime;
  final bool explicit;
  final String type;
  final String medium;
  final String language;
  final int episodeCount;
  final int crawlErrors;
  final Map<String, String> categories;
  final int dead;
  final String contentType;
  final String generator;
  final String newestItemPubdate;
  final String oldestItemPubdate;

  ShowsCompanion toShowCompanion() => ShowsCompanion.insert(
        id: Value<int>(id),
        podcastGuid: podcastGuid,
        title: title,
        url: url,
        link: link,
        description: description,
        author: author,
        ownerName: ownerName,
        image: image,
        artwork: artwork,
        lastUpdateTime: lastUpdateTime,
        explicit: explicit,
        type: type,
        medium: medium,
        language: language,
        episodeCount: episodeCount,
        crawlErrors: crawlErrors,
        categories: categories,
        dead: dead,
        contentType: contentType,
        generator: generator,
        newestItemPubdate: newestItemPubdate,
        oldestItemPubdate: oldestItemPubdate,
      );
}
