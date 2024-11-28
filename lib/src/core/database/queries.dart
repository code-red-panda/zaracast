import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/models/episode_model.dart';
import 'package:zaracast/src/models/show_model.dart';

class Queries {
  const Queries(this._db);

  final AppDatabase _db;

  Future<void> insertShow(ShowModel show) async {
    final c = show.toShowCompanion();
    await _db.into(_db.shows).insertOnConflictUpdate(c);
  }

  Future<void> insertEpisodes(List<EpisodeModel> episodes) async {
    final c = episodes.map((e) => e.toEpisodeCompanion()).toList();

    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.episodes, c);
    });
  }

  Future<List<Show>> getAllShows() => _db.select(_db.shows).get();

// FOr debug only
  Future<List<Episode>> getAllEpisodes() => _db.select(_db.episodes).get();

  Future<void> followShow(int showId, {bool follow = true}) async {
    final q = _db.update(_db.shows)..where((tbl) => tbl.id.equals(showId));
    await q.write(ShowsCompanion(isFollowed: Value(follow)));
  }

  Future<bool> isShowFollowed(int showId) async {
    final r = await (_db.select(_db.shows)
          ..where((tbl) => tbl.id.equals(showId)))
          ..where((tbl) => tbl.isFollowed.equals(true))
        .getSingleOrNull();
    return r != null;
  }

  Future<Show?> getShow(int id) async {
    final query = _db.select(_db.shows)..where((tbl) => tbl.id.equals(id));
    final results = await query.get();
    return results.isEmpty ? null : results.first;
  }

  Future<bool> shouldSyncShow(Show show) {
    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final oneDayAgo = now - (24 * 60 * 60); // 24 hours in seconds
    return Future.value(show.lastEpisodeFetchTime < oneDayAgo);
  }

  Future<void> syncShow(
      ShowsCompanion show, List<EpisodesCompanion> episodes) async {
    await _db.transaction(() async {
      await insertShow(show);
      await insertEpisodes(episodes);
    });
  }
}
