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
  IntColumn get lastUpdateTime => integer()();
  BoolColumn get explicit => boolean()();
  IntColumn get type => integer()();
  TextColumn get medium => text()();
  TextColumn get language => text()();
  IntColumn get episodeCount => integer()();
  IntColumn get crawlErrors => integer()();
  TextColumn get categories => text()();
  IntColumn get dead => integer()();
  TextColumn get contentType => text()();
  TextColumn get generator => text()();
  IntColumn get newestItemPubdate => integer()();

  IntColumn get paletteColor => integer().withDefault(const Constant(0))();
  BoolColumn get isFollowed => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
