// This should have everything form search and get podcast and reduce whats needed in the table
// stay in sync with Episodes table.
import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class EpisodeModel {
  const EpisodeModel({
    required this.id,
    required this.episodeGuid,
    required this.title,
    this.link = '',
    this.description = '',
    this.datePublished = 0,
    this.enclosureUrl = '',
    this.enclosureType = '',
    this.enclosureLength = 0,
    this.duration = 0,
    this.explicit = false,
    this.episodeNumber = 0,
    this.episodeType = '',
    this.seasonNumber = 0,
    this.image = '',
    this.showId = 0,
    this.chaptersUrl = '',
    this.transcriptUrl = '',
  });

  factory EpisodeModel.fromJson(Map<String, dynamic> json) {
    final categories = <String, String>{};
    final categoriesJson = json['categories'] as Map<String, dynamic>?;

    if (categoriesJson != null) {
      categories.addAll(
        categoriesJson.map((key, value) => MapEntry(key, value.toString())),
      );
    }

    return EpisodeModel(
      id: json['id'] as int,
      episodeGuid: json['guid'] as String,
      title: json['title'] as String,
      link: json['link'] as String? ?? '',
      description: json['description'] as String? ?? '',
      datePublished: json['datePublished'] as int? ?? 0,
      enclosureUrl: json['enclosureUrl'] as String? ?? '',
      enclosureType: json['enclosureType'] as String? ?? '',
      enclosureLength: json['enclosureLength'] as int? ?? 0,
      duration: json['duration'] as int? ?? 0,
      explicit: json['explicit'] as bool? ?? false,
      episodeNumber: json['episode'] as int? ?? 0,
      episodeType: json['episodeType'] as String? ?? '',
      seasonNumber: json['season'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      showId: json['feedId'] as int? ?? 0,
      chaptersUrl: json['chaptersUrl'] as String? ?? '',
      transcriptUrl: json['transcriptUrl'] as String? ?? '',
    );
  }

  final int id;
  final String episodeGuid;
  final String title;
  final String link;
  final String description;
  final int datePublished;
  final String enclosureUrl;
  final String enclosureType;
  final int enclosureLength;
  final int duration;
  final bool explicit;
  final int episodeNumber;
  final String episodeType;
  final int seasonNumber;
  final String image;
  final int showId;
  final String chaptersUrl;
  final String transcriptUrl;

  EpisodesCompanion toEpisodeCompanion() => EpisodesCompanion.insert(
        id: Value<int>(id),
        episodeGuid: episodeGuid,
        title: title,
        link: link,
        description: description,
        datePublished: datePublished,
        enclosureUrl: enclosureUrl,
        enclosureType: enclosureType,
        enclosureLength: enclosureLength,
        duration: duration,
        explicit: explicit,
        episodeNumber: episodeNumber,
        episodeType: episodeType,
        seasonNumber: seasonNumber,
        image: image,
        showId: showId,
        chaptersUrl: chaptersUrl,
        transcriptUrl: transcriptUrl,
      );
}
