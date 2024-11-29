import 'dart:convert';
import 'package:zaracast/src/core/database/app_database.dart';

class SearchShowsResponse {
  const SearchShowsResponse({required this.status, required this.shows});

  factory SearchShowsResponse.fromJson(Map<String, dynamic> json) {
    final feeds = (json['feeds'] as List<dynamic>).map((feed) {
      final feedMap = feed as Map<String, dynamic>;
      // Convert categories map to JSON string
      if (feedMap['categories'] != null) {
        feedMap['categories'] = jsonEncode(feedMap['categories']);
      } else {
        feedMap['categories'] = '{}';
      }
      return Show.fromJson(feedMap);
    }).toList();

    return SearchShowsResponse(
      status: json['status'] as String,
      shows: feeds,
    );
  }

  final String status;
  final List<Show> shows;
}
