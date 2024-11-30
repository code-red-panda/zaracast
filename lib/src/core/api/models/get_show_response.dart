import 'package:zaracast/src/core/database/app_database.dart';

class GetShowResponse {
  const GetShowResponse({required this.status, required this.show});

  factory GetShowResponse.fromJson(Map<String, dynamic> json) {
    final showJson = json['feed'] as Map<String, dynamic>;

    showJson.addAll({'paletteColor': 0, 'isFollowed': false});

    print(showJson);

    return GetShowResponse(
      status: json['status'] as String? ?? '',
      show: Show.fromJson(showJson),
    );
  }

  final String status;
  final Show show;
}
