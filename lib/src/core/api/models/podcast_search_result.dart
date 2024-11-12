class PodcastSearchResult {
  const PodcastSearchResult({
    required this.id,
    required this.title,
    required this.url,
    this.description = '',
    this.author = '',
    this.image = '',
    this.feedId = 0,
    this.itunesId = 0,
  });

  factory PodcastSearchResult.fromJson(Map<String, dynamic> json) {
    return PodcastSearchResult(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      description: json['description'] as String? ?? '',
      author: json['author'] as String? ?? '',
      image: json['image'] as String? ?? '',
      feedId: json['feedId'] as int? ?? 0,
      itunesId: json['itunesId'] as int? ?? 0,
    );
  }

  final int id;
  final String title;
  final String url;
  final String description;
  final String author;
  final String image;
  final int feedId;
  final int itunesId;
}

class PodcastSearchResponse {
  const PodcastSearchResponse({
    required this.status,
    required this.feeds,
    required this.count,
    this.description = '',
  });

  factory PodcastSearchResponse.fromJson(Map<String, dynamic> json) {
    final feeds = (json['feeds'] as List<dynamic>)
        .map((feed) => PodcastSearchResult.fromJson(feed as Map<String, dynamic>))
        .toList();

    return PodcastSearchResponse(
      status: json['status'] as String,
      feeds: feeds,
      count: json['count'] as int,
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final List<PodcastSearchResult> feeds;
  final int count;
  final String description;
}
