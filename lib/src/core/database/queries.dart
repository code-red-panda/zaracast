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

  Future<void> updateShowsIsFollowed(int showId, {bool follow = true}) async {
    final q = _db.update(_db.shows)..where((tbl) => tbl.id.equals(showId));
    await q.write(ShowsCompanion(isFollowed: Value(follow)));
  }

  Future<void> updateShowSettingsFilterEpisodesBy(
      int showId, int filterBy) async {
    final q = _db.update(_db.showSettings)
      ..where((tbl) => tbl.showId.equals(showId));
    await q.write(ShowSettingsCompanion(filterEpisodesBy: Value(filterBy)));
  }

  Future<void> updateShowSettingsSortEpisodesBy(int showId, int sortBy) async {
    final q = _db.update(_db.showSettings)
      ..where((tbl) => tbl.showId.equals(showId));
    await q.write(ShowSettingsCompanion(sortEpisodesBy: Value(sortBy)));
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

    return query.watch();
  }

  // Used by ShowHomePage
  Stream<ShowSetting?> watchShowSettings(int showId) {
    final query = _db.select(_db.showSettings)
      ..where((tbl) => tbl.showId.equals(showId));
    return query.watchSingleOrNull();
  }

  // Used by FollowShowIconButton
  Stream<bool?> watchShowIsFollowed(int showId) {
    final query = _db.select(_db.shows)..where((tbl) => tbl.id.equals(showId));

    //return query.map((row) => ShowModel.fromJson(row.toJson())).watch();
    return query.map((row) => row.isFollowed).watchSingleOrNull();
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
