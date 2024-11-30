import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/tables/shows_table.dart';
import 'package:zaracast/src/core/database/utils/json_converter.dart';

// TOOD(red): add showId foreign key
class Episodes extends Table {
  IntColumn get id => integer()();
  TextColumn get guid => text()();
  TextColumn get title => text()();
  TextColumn get link => text()();
  TextColumn get description => text()();
  IntColumn get datePublished => integer()();
  TextColumn get enclosureUrl => text()();
  TextColumn get enclosureType => text()();
  IntColumn get enclosureLength => integer()();
  IntColumn get duration => integer()();
  BoolColumn get explicit => boolean()();
  IntColumn get episodeNumber => integer()();
  TextColumn get episodeType => text()();
  IntColumn get seasonNumber => integer()();
  TextColumn get image => text()();
  TextColumn get feedImage => text()();
  IntColumn get feedId => integer()();


  // Mine
  BoolColumn get isPlayed => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}
