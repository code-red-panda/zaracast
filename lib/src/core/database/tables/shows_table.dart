import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/utils/json_converter.dart';

class Shows extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get link => text()();
  TextColumn get description => text()();
  TextColumn get author => text()();
  TextColumn get image => text()();
  TextColumn get categories => text().map(const JsonConverter())();

// Mine
  IntColumn get paletteColor => integer()();
  BoolColumn get isFollowed => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}
