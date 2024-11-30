import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/utils/json_converter.dart';

// Nullable because these are not returned from APIs and API responses are straight
// converted to Show data classes. But defaults ensure no nulls in the db.
class Shows extends Table {
  IntColumn get id => integer()();
  TextColumn get podcastGuid => text()();
  TextColumn get title => text()();
  TextColumn get url => text()();
  TextColumn get link => text()();
  TextColumn get description => text()();
  TextColumn get author => text()();
  TextColumn get ownerName => text()();
  TextColumn get image => text()();
  TextColumn get artwork => text()();
  IntColumn get lastUpdateTime => integer()();
  BoolColumn get explicit => boolean()();
  IntColumn get type => integer()();
  TextColumn get medium => text()();
  TextColumn get language => text()();
  IntColumn get episodeCount => integer()();
  IntColumn get crawlErrors => integer()();
  TextColumn get categories => text().map(const JsonConverter())();
  IntColumn get dead => integer()();
  TextColumn get contentType => text()();
  TextColumn get generator => text()();

// Mine
  IntColumn get paletteColor => integer().withDefault(const Constant(0))();
  BoolColumn get isFollowed => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}
