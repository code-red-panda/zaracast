import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class PodcastIndexClient {
  PodcastIndexClient({
    required this.apiKey,
    required this.apiSecret,
    this.baseUrl = 'api.podcastindex.org',
  });

  final String apiKey;
  final String apiSecret;
  final String baseUrl;

  Future<Map<String, dynamic>> searchPodcasts(String term) async {
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
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception('Failed to search podcasts: ${response.statusCode}');
    }
  }
}
