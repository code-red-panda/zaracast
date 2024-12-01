import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:zaracast/src/core/api/models/get_episodes_response.dart';
import 'package:zaracast/src/core/api/models/get_show_response.dart';
import 'package:zaracast/src/core/api/models/search_shows_response.dart';

class PodcastIndexClient {
  PodcastIndexClient({
    required this.apiKey,
    required this.apiSecret,
    this.baseUrl = 'api.podcastindex.org',
  });

  final String apiKey;
  final String apiSecret;
  final String baseUrl;

  Future<SearchShowsResponse> searchShows(String term) async {
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

    print(uri);
    print(apiKey);
    print(timestamp);
    print(authHash);

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
      final rawResponse = SearchShowsResponse.fromJson(json);

      // Filter and sort the feeds
      final filteredShows = rawResponse.shows.where((feed) {
        return feed.dead != 1 && // Not dead
            feed.episodeCount >= 1 && // Has episodes
            feed.medium == 'podcast' && // Is a podcast
            feed.image.isNotEmpty && // Has artwork
            feed.title.isNotEmpty && // Has a title
            feed.author.isNotEmpty; // Has an author
      }).toList()
        ..sort(
          (a, b) => b.newestItemPubdate
              .compareTo(a.newestItemPubdate), // Sort by most recent
        );

      return SearchShowsResponse(
        status: rawResponse.status,
        shows: filteredShows,
      );
    } else {
      throw Exception('Failed to search podcasts: ${response.statusCode}');
    }
  }

  Future<GetEpisodesResponse> getEpisodesByFeedId(int id,
      {int max = 10}) async {
    final timestamp =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
    final authHash = sha1
        .convert(
          utf8.encode(apiKey + apiSecret + timestamp),
        )
        .toString();

    final uri = Uri.https(baseUrl, '/api/1.0/episodes/byfeedid', {
      'id': id.toString(),
      'max': max.toString(),
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
      return GetEpisodesResponse.fromJson(json);
    } else {
      throw Exception('Failed to get episodes: ${response.statusCode}');
    }
  }

  Future<GetShowResponse> getShowById(int id) async {
    final timestamp =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
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
      return GetShowResponse.fromJson(json);
    } else {
      throw Exception('Failed to get feed: ${response.statusCode}');
    }
  }
}
