import 'package:drift/drift.dart';

class Shows extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get image => text()();
  TextColumn get author => text()();
  TextColumn get description => text()();
  IntColumn get lastUpdateTime => integer()();
  IntColumn get episodeCount => integer()();
  TextColumn get url => text()();
  TextColumn get link => text()();
  TextColumn get artwork => text()();
  IntColumn get paletteColor => integer().nullable()();
}
