import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/app_database.dart';

class ShowQueries {
  const ShowQueries(this._db);
  
  final AppDatabase _db;

  Future<void> insertShow(ShowsCompanion show) async {
    await _db.into(_db.shows).insertOnConflictUpdate(show);
  }

  Future<void> insertEpisodes(List<EpisodesCompanion> episodes) async {
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.episodes, episodes);
    });
  }
}
