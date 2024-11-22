class EpisodeResponse {
  const EpisodeResponse({
    required this.status,
    required this.items,
    required this.count,
    this.description = '',
  });

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) {
    final items = (json['items'] as List<dynamic>)
        .map((item) => EpisodeItem.fromJson(item as Map<String, dynamic>))
        .toList();

    return EpisodeResponse(
      status: json['status'] as String? ?? '',
      items: items,
      count: json['count'] as int? ?? 0,
      description: json['description'] as String? ?? '',
    );
  }

  final String status;
  final List<EpisodeItem> items;
  final int count;
  final String description;
}

class EpisodeItem {
  const EpisodeItem({
    required this.id,
    required this.title,
    required this.link,
    required this.datePublished,
    this.description = '',
    this.duration = 0,
    this.image = '',
  });

  factory EpisodeItem.fromJson(Map<String, dynamic> json) {
    return EpisodeItem(
      id: json['id'] as int,
      title: json['title'] as String,
      link: json['link'] as String,
      datePublished: json['datePublished'] as int,
      description: json['description'] as String? ?? '',
      duration: json['duration'] as int? ?? 0,
      image: json['image'] as String? ?? '',
    );
  }

  final int id;
  final String title;
  final String link;
  final int datePublished;
  final String description;
  final int duration;
  final String image;
}
