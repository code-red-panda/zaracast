import 'package:drift/drift.dart';

class Shows extends Table {
  IntColumn get id => integer()();
  TextColumn get podcastGuid => text()();
  TextColumn get title => text()();
  TextColumn get url => text()();
  TextColumn get link => text()();
  TextColumn get description => text()();
  TextColumn get author => text()();
  TextColumn get image => text()();
  IntColumn get lastUpdateTime => integer()();
  BoolColumn get explicit => boolean()();
  TextColumn get categories => text()();
  IntColumn get paletteColor => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
