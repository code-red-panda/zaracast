import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
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
      return SearchResponse.fromJson(json);
    } else {
      throw Exception('Failed to search podcasts: ${response.statusCode}');
    }
  }
}
