import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/tables/shows_table.dart';

class Episodes extends Table {
  IntColumn get id => integer()();
  TextColumn get episodeGuid => text()();
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
  IntColumn get showId => integer().references(Shows, #id)();
  TextColumn get chaptersUrl => text()();
  TextColumn get transcriptUrl => text()();

  IntColumn get durationRemaining => integer()();
  BoolColumn get isPlayed => boolean().withDefault(const Constant(false))();
  BoolColumn get isPlaying => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
