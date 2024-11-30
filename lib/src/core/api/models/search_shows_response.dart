class SearchShowsResponse {
  const SearchShowsResponse({required this.status, required this.shows});

  factory SearchShowsResponse.fromJson(Map<String, dynamic> json) {
    final shows = (json['feeds'] as List<dynamic>)
        .map((show) => SearchShowsModel.fromJson(show as Map<String, dynamic>))
        .toList();

    return SearchShowsResponse(
      status: json['status'] as String,
      shows: shows,
    );
  }

  final String status;
  final List<SearchShowsModel> shows;
}

class SearchShowsModel {
  const SearchShowsModel({
    required this.id,
    required this.title,
    this.author = '',
    this.image = '',
    this.lastGoodHttpStatusTime = 0,
    this.language = '',
    this.explicit = false,
    this.medium = '',
    this.dead = 0,
    this.episodeCount = 0,
    this.categories = const {},
    this.newestItemPubdate = 0,
  });

  factory SearchShowsModel.fromJson(Map<String, dynamic> json) {
    return SearchShowsModel(
      id: json['id'] as int,
      title: json['title'] as String,
      author: json['author'] as String? ?? '',
      image: json['image'] as String? ?? '',
      lastGoodHttpStatusTime: json['lastGoodHttpStatusTime'] as int? ?? 0,
      language: json['language'] as String? ?? '',
      explicit: json['explicit'] as bool? ?? false,
      medium: json['medium'] as String? ?? '',
      dead: json['dead'] as int? ?? 0,
      episodeCount: json['episodeCount'] as int? ?? 0,
      categories: json['categories'] as Map<String, dynamic>? ?? const {},
      newestItemPubdate: json['newestItemPubdate'] as int? ?? 0,
    );
  }

  final int id;
  final String title;
  final String author;
  final String image;
  final int lastGoodHttpStatusTime;
  final String language;
  final bool explicit;
  final String medium;
  final int dead;
  final int episodeCount;
  final Map<String, dynamic> categories;
  final int newestItemPubdate;
}
