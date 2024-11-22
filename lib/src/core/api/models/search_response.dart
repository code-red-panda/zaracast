class SearchResponse {
  const SearchResponse({
    required this.status,
    required this.feeds,
    required this.count,
    this.description = '',
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    final feeds = (json['feeds'] as List<dynamic>)
        .map((feed) => Feed.fromJson(feed as Map<String, dynamic>))
        .toList();

    return SearchResponse(
      status: json['status'] as String,
      feeds: feeds,
      count: json['count'] as int,
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final List<Feed> feeds;
  final int count;
  final String description;
}

class Feed {
  const Feed({
    required this.id,
    required this.title,
    required this.url,
    this.description = '',
    this.author = '',
    this.image = '',
    this.lastUpdateTime = 0,
    this.categories = const {},
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
      description: json['description'] as String? ?? '',
      author: json['author'] as String? ?? '',
      image: json['image'] as String? ?? '',
      lastUpdateTime: json['lastUpdateTime'] as int? ?? 0,
      categories: categories,
    );
  }

  final int id;
  final String title;
  final String url;
  final String description;
  final String author;
  final String image;
  final int lastUpdateTime;
  final Map<String, String> categories;
}
