import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class Alarms extends Table {
  TextColumn get id => text()();
  TextColumn get time => text()();
  TextColumn get repeatDays => text()();
  IntColumn get problemCount => integer()();
  IntColumn get difficulty => integer()();
  IntColumn get timeLimitSeconds => integer().nullable()();
  BoolColumn get rescueModeEnabled => boolean()();
  TextColumn get soundFile => text()();
  BoolColumn get enabled => boolean()();
  IntColumn get updatedAt => integer()();
  BoolColumn get synced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class AlarmUnits extends Table {
  TextColumn get alarmId => text().references(Alarms, #id)();
  TextColumn get unitId => text()();
  RealColumn get ratio => real()();
  IntColumn get updatedAt => integer()();
  BoolColumn get synced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {alarmId, unitId};
}

class CachedProblems extends Table {
  TextColumn get id => text()();
  TextColumn get alarmId => text().nullable().references(Alarms, #id)();
  TextColumn get unit => text()();
  IntColumn get difficulty => integer()();
  TextColumn get questionText => text()();
  TextColumn get answerJson => text()();
  IntColumn get seed => integer()();
  IntColumn get createdAt => integer()();
  IntColumn get updatedAt => integer()();
  BoolColumn get synced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class WakeUpRecords extends Table {
  TextColumn get id => text()();
  TextColumn get alarmId => text().nullable().references(Alarms, #id)();
  TextColumn get date => text()();
  BoolColumn get success => boolean()();
  IntColumn get totalTimeSeconds => integer()();
  IntColumn get correctCount => integer()();
  IntColumn get totalCount => integer()();
  TextColumn get unitBreakdownJson => text()();
  IntColumn get updatedAt => integer()();
  BoolColumn get synced => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: <Type>[Alarms, AlarmUnits, CachedProblems, WakeUpRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File(path.join(directory.path, 'math_alarm.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
