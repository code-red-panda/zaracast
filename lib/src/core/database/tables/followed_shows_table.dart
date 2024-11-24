import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/tables/show_table.dart';

class FollowedShows extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get showId => integer().references(Shows, #id)();
  DateTimeColumn get followedAt => dateTime()();
  IntColumn get paletteColor => integer().nullable()();
}
