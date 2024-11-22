class FeedResponse {
  const FeedResponse({
    required this.status,
    required this.feed,
    required this.description,
  });

  factory FeedResponse.fromJson(Map<String, dynamic> json) {
    return FeedResponse(
      status: json['status'] as String? ?? '',
      feed: Feed.fromJson(json['feed'] as Map<String, dynamic>),
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final Feed feed;
  final String description;
}

class Feed {
  const Feed({
    required this.id,
    required this.title,
    required this.url,
    this.link = '',
    this.description = '',
    this.author = '',
    this.image = '',
    this.artwork = '',
    this.lastUpdateTime = 0,
    this.categories = const {},
    this.episodeCount = 0,
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    final categories = <String, String>{};
    final categoriesJson = json['categories'] as Map<String, dynamic>?;
    if (categoriesJson != null) {
      categories.addAll(categoriesJson.map(
        (key, value) => MapEntry(key, value.toString()),
      ));
    }

    return Feed(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      link: json['link'] as String? ?? '',
      description: json['description'] as String? ?? '',
      author: json['author'] as String? ?? '',
      image: json['image'] as String? ?? '',
      artwork: json['artwork'] as String? ?? '',
      lastUpdateTime: json['lastUpdateTime'] as int? ?? 0,
      categories: categories,
      episodeCount: json['episodeCount'] as int? ?? 0,
    );
  }

  final int id;
  final String title;
  final String url;
  final String link;
  final String description;
  final String author;
  final String image;
  final String artwork;
  final int lastUpdateTime;
  final Map<String, String> categories;
  final int episodeCount;
}
