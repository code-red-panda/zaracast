import 'package:zaracast/src/core/database/app_database.dart';

class SearchShowsResponse {
  const SearchShowsResponse({required this.status, required this.shows});

  factory SearchShowsResponse.fromJson(Map<String, dynamic> json) {
    final feeds = (json['feeds'] as List<dynamic>)
        .map((feed) => Show.fromJson(feed as Map<String, dynamic>))
        .toList();

    return SearchShowsResponse(
      status: json['status'] as String,
      shows: feeds,
    );
  }

  final String status;
  final List<Show> shows;
}
