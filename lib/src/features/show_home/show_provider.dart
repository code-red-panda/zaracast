import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/core/service_locator.dart';

final showProvider = StreamProvider.family<Show, int>((ref, showId) {
  return db.watchShow(showId);
});

final showEpisodesProvider = StreamProvider.family<List<Episode>, int>((ref, showId) {
  return db.watchEpisodes(showId);
});
