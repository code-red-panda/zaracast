import 'package:drift/drift.dart';

class Episodes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  IntColumn get duration => integer()();
  IntColumn get durationRemaining => integer().nullable()();
  IntColumn get datePublished => integer()();
  TextColumn get link => text()();
  BoolColumn get isPlayed => boolean().withDefault(const Constant(false))();
  BoolColumn get isSaved => boolean().withDefault(const Constant(false))();
  IntColumn get sort => integer().withDefault(const Constant(0))();
  
  IntColumn get showId => integer().references(Shows, #id)();
}