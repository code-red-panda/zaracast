import 'package:drift/drift.dart';
import 'package:zaracast/src/core/database/tables/episodes_table.dart';

class PlayedEpisodes extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get episodeId => integer().references(Episodes, #id)();
  IntColumn get durationRemaining => integer()();
  BoolColumn get isPlayed => boolean().withDefault(const Constant(false))();
  BoolColumn get isPlaying => boolean().withDefault(const Constant(false))();
  DateTimeColumn get lastPlayedAt => dateTime()();
}
