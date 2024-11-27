import 'package:drift/drift.dart';

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
  TextColumn get lastUpdateTime => integer()();
  BoolColumn get explicit => boolean()();
  TextColumn get type => text()();
  TextColumn get medium => text()();
  TextColumn get language => text()();
  IntColumn get episodeCount => integer()();
  IntColumn get crawlErrors => integer()();
  TextColumn get categories => text()();
  IntColumn get dead => integer()();
  TextColumn get contentType => text()();
  TextColumn get generator => text()();
  TextColumn get newestItemPubdate => text()();
  TextColumn get oldestItemPubdate => text()();
  IntColumn get paletteColor => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
