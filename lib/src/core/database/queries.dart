import 'package:zaracast/src/core/database/app_database.dart';

class Queries {
  const Queries(this._db);

  final AppDatabase _db;

  Future<void> insertShow(ShowsCompanion show) async {
    await _db.into(_db.shows).insertOnConflictUpdate(show);
  }

  Future<void> insertEpisodes(List<EpisodesCompanion> episodes) async {
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.episodes, episodes);
    });
  }

  Future<List<Show>> getAllShows() => _db.select(_db.shows).get();

  Future<List<Episode>> getAllEpisodes() => _db.select(_db.episodes).get();

  Future<List<FollowedShow>> getAllFollowedShows() =>
      _db.select(_db.followedShows).get();

  Future<List<PlayedEpisode>> getAllPlayedEpisodes() =>
      _db.select(_db.playedEpisodes).get();

  Future<void> followShow(int showId) async {
    await _db.into(_db.followedShows).insert(
          FollowedShowsCompanion.insert(
            showId: showId,
            followedAt: DateTime.now(),
          ),
        );
  }

  Future<bool> isShowFollowed(int showId) async {
    final result = await (_db.select(_db.followedShows)
          ..where((tbl) => tbl.showId.equals(showId)))
        .get();
    return result.isNotEmpty;
  }
}
