import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/tables/shows_table.dart';

class ShowSettings extends Table {
  IntColumn get showId => integer().references(Shows, #id)();
  IntColumn get paletteColor => integer()();
  BoolColumn get isFollowed => boolean()();
  // 0 = all
  // 1 = unplayed
  // 2 = played
  IntColumn get filterEpisodesBy => integer()();
  // 0 = latest first
  // 1 = oldest first
  IntColumn get sortEpisodesBy => integer()();

  @override
  Set<Column> get primaryKey => {showId};
}
