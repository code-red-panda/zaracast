import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:zaracast/src/core/api/models/episode_response.dart';
import 'package:zaracast/src/core/api/models/feed_response.dart';
import 'package:zaracast/src/core/api/models/search_response.dart';

class PodcastIndexClient {
  PodcastIndexClient({
    required this.apiKey,
    required this.apiSecret,
    this.baseUrl = 'api.podcastindex.org',
  });

  final String apiKey;
  final String apiSecret;
  final String baseUrl;

  Future<SearchResponse> searchPodcasts(String term) async {
    final timestamp =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final authHash = sha1
        .convert(
          utf8.encode(apiKey + apiSecret + timestamp),
        )
        .toString();

    final uri = Uri.https(baseUrl, '/api/1.0/search/byterm', {
      'q': term,
    });

    final response = await http.get(
      uri,
      headers: {
        'X-Auth-Key': apiKey,
        'X-Auth-Date': timestamp,
        'Authorization': authHash,
        'User-Agent': 'ZaraCast/1.0',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final rawResponse = SearchResponse.fromJson(json);
      
      // Filter the feeds to only include valid, active podcasts
      final filteredFeeds = rawResponse.feeds.where((feed) {
        return feed.dead != 1 && // Not dead
               feed.episodeCount >= 1 && // Has episodes
               feed.medium == 'podcast' && // Is a podcast
               feed.image.isNotEmpty && // Has artwork
               feed.title.isNotEmpty && // Has a title
               feed.author.isNotEmpty; // Has an author
      }).toList();

      return SearchResponse(
        status: rawResponse.status,
        feeds: filteredFeeds,
        count: filteredFeeds.length,
        description: rawResponse.description,
      );
    } else {
      throw Exception('Failed to search podcasts: ${response.statusCode}');
    }
  }

  Future<EpisodeResponse> getEpisodesByFeedId(int id) async {
    final timestamp = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final authHash = sha1
        .convert(
          utf8.encode(apiKey + apiSecret + timestamp),
        )
        .toString();

    final uri = Uri.https(baseUrl, '/api/1.0/episodes/byfeedid', {
      'id': id.toString(),
      'max': '10',
    });

    final response = await http.get(
      uri,
      headers: {
        'X-Auth-Key': apiKey,
        'X-Auth-Date': timestamp,
        'Authorization': authHash,
        'User-Agent': 'ZaraCast/1.0',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return EpisodeResponse.fromJson(json);
    } else {
      throw Exception('Failed to get episodes: ${response.statusCode}');
    }
  }

  Future<FeedResponse> getFeedById(int id) async {
    final timestamp = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final authHash = sha1
        .convert(
          utf8.encode(apiKey + apiSecret + timestamp),
        )
        .toString();

    final uri = Uri.https(baseUrl, '/api/1.0/podcasts/byfeedid', {
      'id': id.toString(),
    });

    final response = await http.get(
      uri,
      headers: {
        'X-Auth-Key': apiKey,
        'X-Auth-Date': timestamp,
        'Authorization': authHash,
        'User-Agent': 'ZaraCast/1.0',
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return FeedResponse.fromJson(json);
    } else {
      throw Exception('Failed to get feed: ${response.statusCode}');
    }
  }
}
