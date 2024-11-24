import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:zaracast/src/core/database/tables/episode_table.dart';
import 'package:zaracast/src/core/database/tables/followed_shows_table.dart';
import 'package:zaracast/src/core/database/tables/played_episodes_table.dart';
import 'package:zaracast/src/core/database/tables/show_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Shows, Episodes, FollowedShows, PlayedEpisodes],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() => driftDatabase(name: 'zaratask');

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // Enable Foreign Keys
        await customStatement('PRAGMA foreign_keys = ON');
      },
      onCreate: (Migrator m) async {
        // Version 1
        // - Create the initial database and tables.
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Version 2
        // - Create the initial database
        //if (from < 2) {
        //
        //}
      },
    );
  }
}
