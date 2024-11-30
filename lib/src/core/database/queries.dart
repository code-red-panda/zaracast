import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

// TODO(red): error handling here?
class Queries {
  const Queries(this._db);

  final AppDatabase _db;

  // TOD(red): can I use show data class instead of my own showmodel?
  Future<void> insertShow(Show show) async {
    await _db.into(_db.shows).insertOnConflictUpdate(show);
  }

  Future<void> insertEpisodes(List<Episode> episodes) async {
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.episodes, episodes);
    });
  }

  Future<List<Show>> getAllShows() => _db.select(_db.shows).get();

  // FOr debug only
  Future<List<Episode>> getAllEpisodes() => _db.select(_db.episodes).get();

  Future<Show?> getShow(int id) async {
    final query = _db.select(_db.shows)..where((tbl) => tbl.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<void> followShow(int showId, {bool follow = true}) async {
    final q = _db.update(_db.shows)..where((tbl) => tbl.id.equals(showId));
    await q.write(ShowsCompanion(isFollowed: Value(follow)));
  }

  Future<bool> isShowFollowed(int showId) async {
    final r = await (_db.select(_db.shows)
          ..where((tbl) => tbl.id.equals(showId) & tbl.isFollowed.equals(true)))
        .getSingleOrNull();
    return r != null;
  }

  Stream<List<Episode>> watchEpisodes(int showId, int played, int sortBy) {
    final isPlayed = played == 0;
    final sortMode = sortBy == 0 ? OrderingMode.desc : OrderingMode.asc;

    print(
        'watchEpisodes stream called showId: $showId isPlayed: $isPlayed sortMode: $sortMode');

    final query = _db.select(_db.episodes)
      ..where(
        (tbl) => tbl.feedId.equals(showId) & tbl.isPlayed.equals(isPlayed),
      )
      ..orderBy(
        [(t) => OrderingTerm(expression: t.datePublished, mode: sortMode)],
      )
      ..limit(10);
    return query.watch();
  }

// TODO(red): make distinct so only diffs are streamed? I think this was an issue in zaratask
  Stream<List<Show>> watchFollowedShows() {
    final query = _db.select(_db.shows)
      ..where((tbl) => tbl.isFollowed.equals(true));

    //return query.map((row) => ShowModel.fromJson(row.toJson())).watch();
    return query.watch();
  }

  Stream<Show?> watchShow(int showId) {
    final query = _db.select(_db.shows)..where((tbl) => tbl.id.equals(showId));

    //return query.map((row) => ShowModel.fromJson(row.toJson())).watch();
    return query.watchSingleOrNull();
  }

  Future<String?> getShowTitle(int showId) async {
    final query = _db.select(_db.shows)..where((tbl) => tbl.id.equals(showId));

    final result = await query.getSingleOrNull();
    return result?.title ?? 'no show';
  }

/*
  Future<void> syncShow(
      ShowsCompanion show, List<EpisodesCompanion> episodes) async {
    await _db.transaction(() async {
      await insertShow(show);
      await insertEpisodes(episodes);
    });
  }
  */
}
