// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AlarmsTable extends Alarms with TableInfo<$AlarmsTable, Alarm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlarmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
      'time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _repeatDaysMeta =
      const VerificationMeta('repeatDays');
  @override
  late final GeneratedColumn<String> repeatDays = GeneratedColumn<String>(
      'repeat_days', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _problemCountMeta =
      const VerificationMeta('problemCount');
  @override
  late final GeneratedColumn<int> problemCount = GeneratedColumn<int>(
      'problem_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<int> difficulty = GeneratedColumn<int>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _timeLimitSecondsMeta =
      const VerificationMeta('timeLimitSeconds');
  @override
  late final GeneratedColumn<int> timeLimitSeconds = GeneratedColumn<int>(
      'time_limit_seconds', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _rescueModeEnabledMeta =
      const VerificationMeta('rescueModeEnabled');
  @override
  late final GeneratedColumn<bool> rescueModeEnabled = GeneratedColumn<bool>(
      'rescue_mode_enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("rescue_mode_enabled" IN (0, 1))'));
  static const VerificationMeta _soundFileMeta =
      const VerificationMeta('soundFile');
  @override
  late final GeneratedColumn<String> soundFile = GeneratedColumn<String>(
      'sound_file', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enabledMeta =
      const VerificationMeta('enabled');
  @override
  late final GeneratedColumn<bool> enabled = GeneratedColumn<bool>(
      'enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enabled" IN (0, 1))'));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        time,
        repeatDays,
        problemCount,
        difficulty,
        timeLimitSeconds,
        rescueModeEnabled,
        soundFile,
        enabled,
        updatedAt,
        synced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'alarms';
  @override
  VerificationContext validateIntegrity(Insertable<Alarm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('repeat_days')) {
      context.handle(
          _repeatDaysMeta,
          repeatDays.isAcceptableOrUnknown(
              data['repeat_days']!, _repeatDaysMeta));
    } else if (isInserting) {
      context.missing(_repeatDaysMeta);
    }
    if (data.containsKey('problem_count')) {
      context.handle(
          _problemCountMeta,
          problemCount.isAcceptableOrUnknown(
              data['problem_count']!, _problemCountMeta));
    } else if (isInserting) {
      context.missing(_problemCountMeta);
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    if (data.containsKey('time_limit_seconds')) {
      context.handle(
          _timeLimitSecondsMeta,
          timeLimitSeconds.isAcceptableOrUnknown(
              data['time_limit_seconds']!, _timeLimitSecondsMeta));
    }
    if (data.containsKey('rescue_mode_enabled')) {
      context.handle(
          _rescueModeEnabledMeta,
          rescueModeEnabled.isAcceptableOrUnknown(
              data['rescue_mode_enabled']!, _rescueModeEnabledMeta));
    } else if (isInserting) {
      context.missing(_rescueModeEnabledMeta);
    }
    if (data.containsKey('sound_file')) {
      context.handle(_soundFileMeta,
          soundFile.isAcceptableOrUnknown(data['sound_file']!, _soundFileMeta));
    } else if (isInserting) {
      context.missing(_soundFileMeta);
    }
    if (data.containsKey('enabled')) {
      context.handle(_enabledMeta,
          enabled.isAcceptableOrUnknown(data['enabled']!, _enabledMeta));
    } else if (isInserting) {
      context.missing(_enabledMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Alarm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Alarm(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      time: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time'])!,
      repeatDays: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}repeat_days'])!,
      problemCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}problem_count'])!,
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}difficulty'])!,
      timeLimitSeconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}time_limit_seconds']),
      rescueModeEnabled: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}rescue_mode_enabled'])!,
      soundFile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sound_file'])!,
      enabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enabled'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
    );
  }

  @override
  $AlarmsTable createAlias(String alias) {
    return $AlarmsTable(attachedDatabase, alias);
  }
}

class Alarm extends DataClass implements Insertable<Alarm> {
  final String id;
  final String time;
  final String repeatDays;
  final int problemCount;
  final int difficulty;
  final int? timeLimitSeconds;
  final bool rescueModeEnabled;
  final String soundFile;
  final bool enabled;
  final int updatedAt;
  final bool synced;
  const Alarm(
      {required this.id,
      required this.time,
      required this.repeatDays,
      required this.problemCount,
      required this.difficulty,
      this.timeLimitSeconds,
      required this.rescueModeEnabled,
      required this.soundFile,
      required this.enabled,
      required this.updatedAt,
      required this.synced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['time'] = Variable<String>(time);
    map['repeat_days'] = Variable<String>(repeatDays);
    map['problem_count'] = Variable<int>(problemCount);
    map['difficulty'] = Variable<int>(difficulty);
    if (!nullToAbsent || timeLimitSeconds != null) {
      map['time_limit_seconds'] = Variable<int>(timeLimitSeconds);
    }
    map['rescue_mode_enabled'] = Variable<bool>(rescueModeEnabled);
    map['sound_file'] = Variable<String>(soundFile);
    map['enabled'] = Variable<bool>(enabled);
    map['updated_at'] = Variable<int>(updatedAt);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  AlarmsCompanion toCompanion(bool nullToAbsent) {
    return AlarmsCompanion(
      id: Value(id),
      time: Value(time),
      repeatDays: Value(repeatDays),
      problemCount: Value(problemCount),
      difficulty: Value(difficulty),
      timeLimitSeconds: timeLimitSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(timeLimitSeconds),
      rescueModeEnabled: Value(rescueModeEnabled),
      soundFile: Value(soundFile),
      enabled: Value(enabled),
      updatedAt: Value(updatedAt),
      synced: Value(synced),
    );
  }

  factory Alarm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Alarm(
      id: serializer.fromJson<String>(json['id']),
      time: serializer.fromJson<String>(json['time']),
      repeatDays: serializer.fromJson<String>(json['repeatDays']),
      problemCount: serializer.fromJson<int>(json['problemCount']),
      difficulty: serializer.fromJson<int>(json['difficulty']),
      timeLimitSeconds: serializer.fromJson<int?>(json['timeLimitSeconds']),
      rescueModeEnabled: serializer.fromJson<bool>(json['rescueModeEnabled']),
      soundFile: serializer.fromJson<String>(json['soundFile']),
      enabled: serializer.fromJson<bool>(json['enabled']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'time': serializer.toJson<String>(time),
      'repeatDays': serializer.toJson<String>(repeatDays),
      'problemCount': serializer.toJson<int>(problemCount),
      'difficulty': serializer.toJson<int>(difficulty),
      'timeLimitSeconds': serializer.toJson<int?>(timeLimitSeconds),
      'rescueModeEnabled': serializer.toJson<bool>(rescueModeEnabled),
      'soundFile': serializer.toJson<String>(soundFile),
      'enabled': serializer.toJson<bool>(enabled),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  Alarm copyWith(
          {String? id,
          String? time,
          String? repeatDays,
          int? problemCount,
          int? difficulty,
          Value<int?> timeLimitSeconds = const Value.absent(),
          bool? rescueModeEnabled,
          String? soundFile,
          bool? enabled,
          int? updatedAt,
          bool? synced}) =>
      Alarm(
        id: id ?? this.id,
        time: time ?? this.time,
        repeatDays: repeatDays ?? this.repeatDays,
        problemCount: problemCount ?? this.problemCount,
        difficulty: difficulty ?? this.difficulty,
        timeLimitSeconds: timeLimitSeconds.present
            ? timeLimitSeconds.value
            : this.timeLimitSeconds,
        rescueModeEnabled: rescueModeEnabled ?? this.rescueModeEnabled,
        soundFile: soundFile ?? this.soundFile,
        enabled: enabled ?? this.enabled,
        updatedAt: updatedAt ?? this.updatedAt,
        synced: synced ?? this.synced,
      );
  Alarm copyWithCompanion(AlarmsCompanion data) {
    return Alarm(
      id: data.id.present ? data.id.value : this.id,
      time: data.time.present ? data.time.value : this.time,
      repeatDays:
          data.repeatDays.present ? data.repeatDays.value : this.repeatDays,
      problemCount: data.problemCount.present
          ? data.problemCount.value
          : this.problemCount,
      difficulty:
          data.difficulty.present ? data.difficulty.value : this.difficulty,
      timeLimitSeconds: data.timeLimitSeconds.present
          ? data.timeLimitSeconds.value
          : this.timeLimitSeconds,
      rescueModeEnabled: data.rescueModeEnabled.present
          ? data.rescueModeEnabled.value
          : this.rescueModeEnabled,
      soundFile: data.soundFile.present ? data.soundFile.value : this.soundFile,
      enabled: data.enabled.present ? data.enabled.value : this.enabled,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Alarm(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('repeatDays: $repeatDays, ')
          ..write('problemCount: $problemCount, ')
          ..write('difficulty: $difficulty, ')
          ..write('timeLimitSeconds: $timeLimitSeconds, ')
          ..write('rescueModeEnabled: $rescueModeEnabled, ')
          ..write('soundFile: $soundFile, ')
          ..write('enabled: $enabled, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      time,
      repeatDays,
      problemCount,
      difficulty,
      timeLimitSeconds,
      rescueModeEnabled,
      soundFile,
      enabled,
      updatedAt,
      synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Alarm &&
          other.id == this.id &&
          other.time == this.time &&
          other.repeatDays == this.repeatDays &&
          other.problemCount == this.problemCount &&
          other.difficulty == this.difficulty &&
          other.timeLimitSeconds == this.timeLimitSeconds &&
          other.rescueModeEnabled == this.rescueModeEnabled &&
          other.soundFile == this.soundFile &&
          other.enabled == this.enabled &&
          other.updatedAt == this.updatedAt &&
          other.synced == this.synced);
}

class AlarmsCompanion extends UpdateCompanion<Alarm> {
  final Value<String> id;
  final Value<String> time;
  final Value<String> repeatDays;
  final Value<int> problemCount;
  final Value<int> difficulty;
  final Value<int?> timeLimitSeconds;
  final Value<bool> rescueModeEnabled;
  final Value<String> soundFile;
  final Value<bool> enabled;
  final Value<int> updatedAt;
  final Value<bool> synced;
  final Value<int> rowid;
  const AlarmsCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.repeatDays = const Value.absent(),
    this.problemCount = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.timeLimitSeconds = const Value.absent(),
    this.rescueModeEnabled = const Value.absent(),
    this.soundFile = const Value.absent(),
    this.enabled = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AlarmsCompanion.insert({
    required String id,
    required String time,
    required String repeatDays,
    required int problemCount,
    required int difficulty,
    this.timeLimitSeconds = const Value.absent(),
    required bool rescueModeEnabled,
    required String soundFile,
    required bool enabled,
    required int updatedAt,
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        time = Value(time),
        repeatDays = Value(repeatDays),
        problemCount = Value(problemCount),
        difficulty = Value(difficulty),
        rescueModeEnabled = Value(rescueModeEnabled),
        soundFile = Value(soundFile),
        enabled = Value(enabled),
        updatedAt = Value(updatedAt);
  static Insertable<Alarm> custom({
    Expression<String>? id,
    Expression<String>? time,
    Expression<String>? repeatDays,
    Expression<int>? problemCount,
    Expression<int>? difficulty,
    Expression<int>? timeLimitSeconds,
    Expression<bool>? rescueModeEnabled,
    Expression<String>? soundFile,
    Expression<bool>? enabled,
    Expression<int>? updatedAt,
    Expression<bool>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (repeatDays != null) 'repeat_days': repeatDays,
      if (problemCount != null) 'problem_count': problemCount,
      if (difficulty != null) 'difficulty': difficulty,
      if (timeLimitSeconds != null) 'time_limit_seconds': timeLimitSeconds,
      if (rescueModeEnabled != null) 'rescue_mode_enabled': rescueModeEnabled,
      if (soundFile != null) 'sound_file': soundFile,
      if (enabled != null) 'enabled': enabled,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AlarmsCompanion copyWith(
      {Value<String>? id,
      Value<String>? time,
      Value<String>? repeatDays,
      Value<int>? problemCount,
      Value<int>? difficulty,
      Value<int?>? timeLimitSeconds,
      Value<bool>? rescueModeEnabled,
      Value<String>? soundFile,
      Value<bool>? enabled,
      Value<int>? updatedAt,
      Value<bool>? synced,
      Value<int>? rowid}) {
    return AlarmsCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      repeatDays: repeatDays ?? this.repeatDays,
      problemCount: problemCount ?? this.problemCount,
      difficulty: difficulty ?? this.difficulty,
      timeLimitSeconds: timeLimitSeconds ?? this.timeLimitSeconds,
      rescueModeEnabled: rescueModeEnabled ?? this.rescueModeEnabled,
      soundFile: soundFile ?? this.soundFile,
      enabled: enabled ?? this.enabled,
      updatedAt: updatedAt ?? this.updatedAt,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (repeatDays.present) {
      map['repeat_days'] = Variable<String>(repeatDays.value);
    }
    if (problemCount.present) {
      map['problem_count'] = Variable<int>(problemCount.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<int>(difficulty.value);
    }
    if (timeLimitSeconds.present) {
      map['time_limit_seconds'] = Variable<int>(timeLimitSeconds.value);
    }
    if (rescueModeEnabled.present) {
      map['rescue_mode_enabled'] = Variable<bool>(rescueModeEnabled.value);
    }
    if (soundFile.present) {
      map['sound_file'] = Variable<String>(soundFile.value);
    }
    if (enabled.present) {
      map['enabled'] = Variable<bool>(enabled.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmsCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('repeatDays: $repeatDays, ')
          ..write('problemCount: $problemCount, ')
          ..write('difficulty: $difficulty, ')
          ..write('timeLimitSeconds: $timeLimitSeconds, ')
          ..write('rescueModeEnabled: $rescueModeEnabled, ')
          ..write('soundFile: $soundFile, ')
          ..write('enabled: $enabled, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AlarmUnitsTable extends AlarmUnits
    with TableInfo<$AlarmUnitsTable, AlarmUnit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlarmUnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _alarmIdMeta =
      const VerificationMeta('alarmId');
  @override
  late final GeneratedColumn<String> alarmId = GeneratedColumn<String>(
      'alarm_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES alarms (id)'));
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String> unitId = GeneratedColumn<String>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ratioMeta = const VerificationMeta('ratio');
  @override
  late final GeneratedColumn<double> ratio = GeneratedColumn<double>(
      'ratio', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [alarmId, unitId, ratio, updatedAt, synced];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'alarm_units';
  @override
  VerificationContext validateIntegrity(Insertable<AlarmUnit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('alarm_id')) {
      context.handle(_alarmIdMeta,
          alarmId.isAcceptableOrUnknown(data['alarm_id']!, _alarmIdMeta));
    } else if (isInserting) {
      context.missing(_alarmIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('ratio')) {
      context.handle(
          _ratioMeta, ratio.isAcceptableOrUnknown(data['ratio']!, _ratioMeta));
    } else if (isInserting) {
      context.missing(_ratioMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {alarmId, unitId};
  @override
  AlarmUnit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AlarmUnit(
      alarmId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alarm_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_id'])!,
      ratio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ratio'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
    );
  }

  @override
  $AlarmUnitsTable createAlias(String alias) {
    return $AlarmUnitsTable(attachedDatabase, alias);
  }
}

class AlarmUnit extends DataClass implements Insertable<AlarmUnit> {
  final String alarmId;
  final String unitId;
  final double ratio;
  final int updatedAt;
  final bool synced;
  const AlarmUnit(
      {required this.alarmId,
      required this.unitId,
      required this.ratio,
      required this.updatedAt,
      required this.synced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['alarm_id'] = Variable<String>(alarmId);
    map['unit_id'] = Variable<String>(unitId);
    map['ratio'] = Variable<double>(ratio);
    map['updated_at'] = Variable<int>(updatedAt);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  AlarmUnitsCompanion toCompanion(bool nullToAbsent) {
    return AlarmUnitsCompanion(
      alarmId: Value(alarmId),
      unitId: Value(unitId),
      ratio: Value(ratio),
      updatedAt: Value(updatedAt),
      synced: Value(synced),
    );
  }

  factory AlarmUnit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AlarmUnit(
      alarmId: serializer.fromJson<String>(json['alarmId']),
      unitId: serializer.fromJson<String>(json['unitId']),
      ratio: serializer.fromJson<double>(json['ratio']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'alarmId': serializer.toJson<String>(alarmId),
      'unitId': serializer.toJson<String>(unitId),
      'ratio': serializer.toJson<double>(ratio),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  AlarmUnit copyWith(
          {String? alarmId,
          String? unitId,
          double? ratio,
          int? updatedAt,
          bool? synced}) =>
      AlarmUnit(
        alarmId: alarmId ?? this.alarmId,
        unitId: unitId ?? this.unitId,
        ratio: ratio ?? this.ratio,
        updatedAt: updatedAt ?? this.updatedAt,
        synced: synced ?? this.synced,
      );
  AlarmUnit copyWithCompanion(AlarmUnitsCompanion data) {
    return AlarmUnit(
      alarmId: data.alarmId.present ? data.alarmId.value : this.alarmId,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      ratio: data.ratio.present ? data.ratio.value : this.ratio,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AlarmUnit(')
          ..write('alarmId: $alarmId, ')
          ..write('unitId: $unitId, ')
          ..write('ratio: $ratio, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(alarmId, unitId, ratio, updatedAt, synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlarmUnit &&
          other.alarmId == this.alarmId &&
          other.unitId == this.unitId &&
          other.ratio == this.ratio &&
          other.updatedAt == this.updatedAt &&
          other.synced == this.synced);
}

class AlarmUnitsCompanion extends UpdateCompanion<AlarmUnit> {
  final Value<String> alarmId;
  final Value<String> unitId;
  final Value<double> ratio;
  final Value<int> updatedAt;
  final Value<bool> synced;
  final Value<int> rowid;
  const AlarmUnitsCompanion({
    this.alarmId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.ratio = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AlarmUnitsCompanion.insert({
    required String alarmId,
    required String unitId,
    required double ratio,
    required int updatedAt,
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : alarmId = Value(alarmId),
        unitId = Value(unitId),
        ratio = Value(ratio),
        updatedAt = Value(updatedAt);
  static Insertable<AlarmUnit> custom({
    Expression<String>? alarmId,
    Expression<String>? unitId,
    Expression<double>? ratio,
    Expression<int>? updatedAt,
    Expression<bool>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (alarmId != null) 'alarm_id': alarmId,
      if (unitId != null) 'unit_id': unitId,
      if (ratio != null) 'ratio': ratio,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AlarmUnitsCompanion copyWith(
      {Value<String>? alarmId,
      Value<String>? unitId,
      Value<double>? ratio,
      Value<int>? updatedAt,
      Value<bool>? synced,
      Value<int>? rowid}) {
    return AlarmUnitsCompanion(
      alarmId: alarmId ?? this.alarmId,
      unitId: unitId ?? this.unitId,
      ratio: ratio ?? this.ratio,
      updatedAt: updatedAt ?? this.updatedAt,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (alarmId.present) {
      map['alarm_id'] = Variable<String>(alarmId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (ratio.present) {
      map['ratio'] = Variable<double>(ratio.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmUnitsCompanion(')
          ..write('alarmId: $alarmId, ')
          ..write('unitId: $unitId, ')
          ..write('ratio: $ratio, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedProblemsTable extends CachedProblems
    with TableInfo<$CachedProblemsTable, CachedProblem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedProblemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alarmIdMeta =
      const VerificationMeta('alarmId');
  @override
  late final GeneratedColumn<String> alarmId = GeneratedColumn<String>(
      'alarm_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES alarms (id)'));
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<int> difficulty = GeneratedColumn<int>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _questionTextMeta =
      const VerificationMeta('questionText');
  @override
  late final GeneratedColumn<String> questionText = GeneratedColumn<String>(
      'question_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerJsonMeta =
      const VerificationMeta('answerJson');
  @override
  late final GeneratedColumn<String> answerJson = GeneratedColumn<String>(
      'answer_json', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seedMeta = const VerificationMeta('seed');
  @override
  late final GeneratedColumn<int> seed = GeneratedColumn<int>(
      'seed', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        alarmId,
        unit,
        difficulty,
        questionText,
        answerJson,
        seed,
        createdAt,
        updatedAt,
        synced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_problems';
  @override
  VerificationContext validateIntegrity(Insertable<CachedProblem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('alarm_id')) {
      context.handle(_alarmIdMeta,
          alarmId.isAcceptableOrUnknown(data['alarm_id']!, _alarmIdMeta));
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    if (data.containsKey('question_text')) {
      context.handle(
          _questionTextMeta,
          questionText.isAcceptableOrUnknown(
              data['question_text']!, _questionTextMeta));
    } else if (isInserting) {
      context.missing(_questionTextMeta);
    }
    if (data.containsKey('answer_json')) {
      context.handle(
          _answerJsonMeta,
          answerJson.isAcceptableOrUnknown(
              data['answer_json']!, _answerJsonMeta));
    } else if (isInserting) {
      context.missing(_answerJsonMeta);
    }
    if (data.containsKey('seed')) {
      context.handle(
          _seedMeta, seed.isAcceptableOrUnknown(data['seed']!, _seedMeta));
    } else if (isInserting) {
      context.missing(_seedMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedProblem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedProblem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      alarmId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alarm_id']),
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit'])!,
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}difficulty'])!,
      questionText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_text'])!,
      answerJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer_json'])!,
      seed: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}seed'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
    );
  }

  @override
  $CachedProblemsTable createAlias(String alias) {
    return $CachedProblemsTable(attachedDatabase, alias);
  }
}

class CachedProblem extends DataClass implements Insertable<CachedProblem> {
  final String id;
  final String? alarmId;
  final String unit;
  final int difficulty;
  final String questionText;
  final String answerJson;
  final int seed;
  final int createdAt;
  final int updatedAt;
  final bool synced;
  const CachedProblem(
      {required this.id,
      this.alarmId,
      required this.unit,
      required this.difficulty,
      required this.questionText,
      required this.answerJson,
      required this.seed,
      required this.createdAt,
      required this.updatedAt,
      required this.synced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || alarmId != null) {
      map['alarm_id'] = Variable<String>(alarmId);
    }
    map['unit'] = Variable<String>(unit);
    map['difficulty'] = Variable<int>(difficulty);
    map['question_text'] = Variable<String>(questionText);
    map['answer_json'] = Variable<String>(answerJson);
    map['seed'] = Variable<int>(seed);
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  CachedProblemsCompanion toCompanion(bool nullToAbsent) {
    return CachedProblemsCompanion(
      id: Value(id),
      alarmId: alarmId == null && nullToAbsent
          ? const Value.absent()
          : Value(alarmId),
      unit: Value(unit),
      difficulty: Value(difficulty),
      questionText: Value(questionText),
      answerJson: Value(answerJson),
      seed: Value(seed),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      synced: Value(synced),
    );
  }

  factory CachedProblem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedProblem(
      id: serializer.fromJson<String>(json['id']),
      alarmId: serializer.fromJson<String?>(json['alarmId']),
      unit: serializer.fromJson<String>(json['unit']),
      difficulty: serializer.fromJson<int>(json['difficulty']),
      questionText: serializer.fromJson<String>(json['questionText']),
      answerJson: serializer.fromJson<String>(json['answerJson']),
      seed: serializer.fromJson<int>(json['seed']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'alarmId': serializer.toJson<String?>(alarmId),
      'unit': serializer.toJson<String>(unit),
      'difficulty': serializer.toJson<int>(difficulty),
      'questionText': serializer.toJson<String>(questionText),
      'answerJson': serializer.toJson<String>(answerJson),
      'seed': serializer.toJson<int>(seed),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  CachedProblem copyWith(
          {String? id,
          Value<String?> alarmId = const Value.absent(),
          String? unit,
          int? difficulty,
          String? questionText,
          String? answerJson,
          int? seed,
          int? createdAt,
          int? updatedAt,
          bool? synced}) =>
      CachedProblem(
        id: id ?? this.id,
        alarmId: alarmId.present ? alarmId.value : this.alarmId,
        unit: unit ?? this.unit,
        difficulty: difficulty ?? this.difficulty,
        questionText: questionText ?? this.questionText,
        answerJson: answerJson ?? this.answerJson,
        seed: seed ?? this.seed,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        synced: synced ?? this.synced,
      );
  CachedProblem copyWithCompanion(CachedProblemsCompanion data) {
    return CachedProblem(
      id: data.id.present ? data.id.value : this.id,
      alarmId: data.alarmId.present ? data.alarmId.value : this.alarmId,
      unit: data.unit.present ? data.unit.value : this.unit,
      difficulty:
          data.difficulty.present ? data.difficulty.value : this.difficulty,
      questionText: data.questionText.present
          ? data.questionText.value
          : this.questionText,
      answerJson:
          data.answerJson.present ? data.answerJson.value : this.answerJson,
      seed: data.seed.present ? data.seed.value : this.seed,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedProblem(')
          ..write('id: $id, ')
          ..write('alarmId: $alarmId, ')
          ..write('unit: $unit, ')
          ..write('difficulty: $difficulty, ')
          ..write('questionText: $questionText, ')
          ..write('answerJson: $answerJson, ')
          ..write('seed: $seed, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, alarmId, unit, difficulty, questionText,
      answerJson, seed, createdAt, updatedAt, synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedProblem &&
          other.id == this.id &&
          other.alarmId == this.alarmId &&
          other.unit == this.unit &&
          other.difficulty == this.difficulty &&
          other.questionText == this.questionText &&
          other.answerJson == this.answerJson &&
          other.seed == this.seed &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.synced == this.synced);
}

class CachedProblemsCompanion extends UpdateCompanion<CachedProblem> {
  final Value<String> id;
  final Value<String?> alarmId;
  final Value<String> unit;
  final Value<int> difficulty;
  final Value<String> questionText;
  final Value<String> answerJson;
  final Value<int> seed;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<bool> synced;
  final Value<int> rowid;
  const CachedProblemsCompanion({
    this.id = const Value.absent(),
    this.alarmId = const Value.absent(),
    this.unit = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.questionText = const Value.absent(),
    this.answerJson = const Value.absent(),
    this.seed = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedProblemsCompanion.insert({
    required String id,
    this.alarmId = const Value.absent(),
    required String unit,
    required int difficulty,
    required String questionText,
    required String answerJson,
    required int seed,
    required int createdAt,
    required int updatedAt,
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        unit = Value(unit),
        difficulty = Value(difficulty),
        questionText = Value(questionText),
        answerJson = Value(answerJson),
        seed = Value(seed),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<CachedProblem> custom({
    Expression<String>? id,
    Expression<String>? alarmId,
    Expression<String>? unit,
    Expression<int>? difficulty,
    Expression<String>? questionText,
    Expression<String>? answerJson,
    Expression<int>? seed,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<bool>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (alarmId != null) 'alarm_id': alarmId,
      if (unit != null) 'unit': unit,
      if (difficulty != null) 'difficulty': difficulty,
      if (questionText != null) 'question_text': questionText,
      if (answerJson != null) 'answer_json': answerJson,
      if (seed != null) 'seed': seed,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedProblemsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? alarmId,
      Value<String>? unit,
      Value<int>? difficulty,
      Value<String>? questionText,
      Value<String>? answerJson,
      Value<int>? seed,
      Value<int>? createdAt,
      Value<int>? updatedAt,
      Value<bool>? synced,
      Value<int>? rowid}) {
    return CachedProblemsCompanion(
      id: id ?? this.id,
      alarmId: alarmId ?? this.alarmId,
      unit: unit ?? this.unit,
      difficulty: difficulty ?? this.difficulty,
      questionText: questionText ?? this.questionText,
      answerJson: answerJson ?? this.answerJson,
      seed: seed ?? this.seed,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (alarmId.present) {
      map['alarm_id'] = Variable<String>(alarmId.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<int>(difficulty.value);
    }
    if (questionText.present) {
      map['question_text'] = Variable<String>(questionText.value);
    }
    if (answerJson.present) {
      map['answer_json'] = Variable<String>(answerJson.value);
    }
    if (seed.present) {
      map['seed'] = Variable<int>(seed.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedProblemsCompanion(')
          ..write('id: $id, ')
          ..write('alarmId: $alarmId, ')
          ..write('unit: $unit, ')
          ..write('difficulty: $difficulty, ')
          ..write('questionText: $questionText, ')
          ..write('answerJson: $answerJson, ')
          ..write('seed: $seed, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WakeUpRecordsTable extends WakeUpRecords
    with TableInfo<$WakeUpRecordsTable, WakeUpRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WakeUpRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alarmIdMeta =
      const VerificationMeta('alarmId');
  @override
  late final GeneratedColumn<String> alarmId = GeneratedColumn<String>(
      'alarm_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES alarms (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _successMeta =
      const VerificationMeta('success');
  @override
  late final GeneratedColumn<bool> success = GeneratedColumn<bool>(
      'success', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("success" IN (0, 1))'));
  static const VerificationMeta _totalTimeSecondsMeta =
      const VerificationMeta('totalTimeSeconds');
  @override
  late final GeneratedColumn<int> totalTimeSeconds = GeneratedColumn<int>(
      'total_time_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _correctCountMeta =
      const VerificationMeta('correctCount');
  @override
  late final GeneratedColumn<int> correctCount = GeneratedColumn<int>(
      'correct_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalCountMeta =
      const VerificationMeta('totalCount');
  @override
  late final GeneratedColumn<int> totalCount = GeneratedColumn<int>(
      'total_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitBreakdownJsonMeta =
      const VerificationMeta('unitBreakdownJson');
  @override
  late final GeneratedColumn<String> unitBreakdownJson =
      GeneratedColumn<String>('unit_breakdown_json', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _syncedMeta = const VerificationMeta('synced');
  @override
  late final GeneratedColumn<bool> synced = GeneratedColumn<bool>(
      'synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        alarmId,
        date,
        success,
        totalTimeSeconds,
        correctCount,
        totalCount,
        unitBreakdownJson,
        updatedAt,
        synced
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wake_up_records';
  @override
  VerificationContext validateIntegrity(Insertable<WakeUpRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('alarm_id')) {
      context.handle(_alarmIdMeta,
          alarmId.isAcceptableOrUnknown(data['alarm_id']!, _alarmIdMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('success')) {
      context.handle(_successMeta,
          success.isAcceptableOrUnknown(data['success']!, _successMeta));
    } else if (isInserting) {
      context.missing(_successMeta);
    }
    if (data.containsKey('total_time_seconds')) {
      context.handle(
          _totalTimeSecondsMeta,
          totalTimeSeconds.isAcceptableOrUnknown(
              data['total_time_seconds']!, _totalTimeSecondsMeta));
    } else if (isInserting) {
      context.missing(_totalTimeSecondsMeta);
    }
    if (data.containsKey('correct_count')) {
      context.handle(
          _correctCountMeta,
          correctCount.isAcceptableOrUnknown(
              data['correct_count']!, _correctCountMeta));
    } else if (isInserting) {
      context.missing(_correctCountMeta);
    }
    if (data.containsKey('total_count')) {
      context.handle(
          _totalCountMeta,
          totalCount.isAcceptableOrUnknown(
              data['total_count']!, _totalCountMeta));
    } else if (isInserting) {
      context.missing(_totalCountMeta);
    }
    if (data.containsKey('unit_breakdown_json')) {
      context.handle(
          _unitBreakdownJsonMeta,
          unitBreakdownJson.isAcceptableOrUnknown(
              data['unit_breakdown_json']!, _unitBreakdownJsonMeta));
    } else if (isInserting) {
      context.missing(_unitBreakdownJsonMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('synced')) {
      context.handle(_syncedMeta,
          synced.isAcceptableOrUnknown(data['synced']!, _syncedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WakeUpRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WakeUpRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      alarmId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alarm_id']),
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      success: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}success'])!,
      totalTimeSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_time_seconds'])!,
      correctCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}correct_count'])!,
      totalCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_count'])!,
      unitBreakdownJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}unit_breakdown_json'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}updated_at'])!,
      synced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}synced'])!,
    );
  }

  @override
  $WakeUpRecordsTable createAlias(String alias) {
    return $WakeUpRecordsTable(attachedDatabase, alias);
  }
}

class WakeUpRecord extends DataClass implements Insertable<WakeUpRecord> {
  final String id;
  final String? alarmId;
  final String date;
  final bool success;
  final int totalTimeSeconds;
  final int correctCount;
  final int totalCount;
  final String unitBreakdownJson;
  final int updatedAt;
  final bool synced;
  const WakeUpRecord(
      {required this.id,
      this.alarmId,
      required this.date,
      required this.success,
      required this.totalTimeSeconds,
      required this.correctCount,
      required this.totalCount,
      required this.unitBreakdownJson,
      required this.updatedAt,
      required this.synced});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || alarmId != null) {
      map['alarm_id'] = Variable<String>(alarmId);
    }
    map['date'] = Variable<String>(date);
    map['success'] = Variable<bool>(success);
    map['total_time_seconds'] = Variable<int>(totalTimeSeconds);
    map['correct_count'] = Variable<int>(correctCount);
    map['total_count'] = Variable<int>(totalCount);
    map['unit_breakdown_json'] = Variable<String>(unitBreakdownJson);
    map['updated_at'] = Variable<int>(updatedAt);
    map['synced'] = Variable<bool>(synced);
    return map;
  }

  WakeUpRecordsCompanion toCompanion(bool nullToAbsent) {
    return WakeUpRecordsCompanion(
      id: Value(id),
      alarmId: alarmId == null && nullToAbsent
          ? const Value.absent()
          : Value(alarmId),
      date: Value(date),
      success: Value(success),
      totalTimeSeconds: Value(totalTimeSeconds),
      correctCount: Value(correctCount),
      totalCount: Value(totalCount),
      unitBreakdownJson: Value(unitBreakdownJson),
      updatedAt: Value(updatedAt),
      synced: Value(synced),
    );
  }

  factory WakeUpRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WakeUpRecord(
      id: serializer.fromJson<String>(json['id']),
      alarmId: serializer.fromJson<String?>(json['alarmId']),
      date: serializer.fromJson<String>(json['date']),
      success: serializer.fromJson<bool>(json['success']),
      totalTimeSeconds: serializer.fromJson<int>(json['totalTimeSeconds']),
      correctCount: serializer.fromJson<int>(json['correctCount']),
      totalCount: serializer.fromJson<int>(json['totalCount']),
      unitBreakdownJson: serializer.fromJson<String>(json['unitBreakdownJson']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
      synced: serializer.fromJson<bool>(json['synced']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'alarmId': serializer.toJson<String?>(alarmId),
      'date': serializer.toJson<String>(date),
      'success': serializer.toJson<bool>(success),
      'totalTimeSeconds': serializer.toJson<int>(totalTimeSeconds),
      'correctCount': serializer.toJson<int>(correctCount),
      'totalCount': serializer.toJson<int>(totalCount),
      'unitBreakdownJson': serializer.toJson<String>(unitBreakdownJson),
      'updatedAt': serializer.toJson<int>(updatedAt),
      'synced': serializer.toJson<bool>(synced),
    };
  }

  WakeUpRecord copyWith(
          {String? id,
          Value<String?> alarmId = const Value.absent(),
          String? date,
          bool? success,
          int? totalTimeSeconds,
          int? correctCount,
          int? totalCount,
          String? unitBreakdownJson,
          int? updatedAt,
          bool? synced}) =>
      WakeUpRecord(
        id: id ?? this.id,
        alarmId: alarmId.present ? alarmId.value : this.alarmId,
        date: date ?? this.date,
        success: success ?? this.success,
        totalTimeSeconds: totalTimeSeconds ?? this.totalTimeSeconds,
        correctCount: correctCount ?? this.correctCount,
        totalCount: totalCount ?? this.totalCount,
        unitBreakdownJson: unitBreakdownJson ?? this.unitBreakdownJson,
        updatedAt: updatedAt ?? this.updatedAt,
        synced: synced ?? this.synced,
      );
  WakeUpRecord copyWithCompanion(WakeUpRecordsCompanion data) {
    return WakeUpRecord(
      id: data.id.present ? data.id.value : this.id,
      alarmId: data.alarmId.present ? data.alarmId.value : this.alarmId,
      date: data.date.present ? data.date.value : this.date,
      success: data.success.present ? data.success.value : this.success,
      totalTimeSeconds: data.totalTimeSeconds.present
          ? data.totalTimeSeconds.value
          : this.totalTimeSeconds,
      correctCount: data.correctCount.present
          ? data.correctCount.value
          : this.correctCount,
      totalCount:
          data.totalCount.present ? data.totalCount.value : this.totalCount,
      unitBreakdownJson: data.unitBreakdownJson.present
          ? data.unitBreakdownJson.value
          : this.unitBreakdownJson,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      synced: data.synced.present ? data.synced.value : this.synced,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WakeUpRecord(')
          ..write('id: $id, ')
          ..write('alarmId: $alarmId, ')
          ..write('date: $date, ')
          ..write('success: $success, ')
          ..write('totalTimeSeconds: $totalTimeSeconds, ')
          ..write('correctCount: $correctCount, ')
          ..write('totalCount: $totalCount, ')
          ..write('unitBreakdownJson: $unitBreakdownJson, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, alarmId, date, success, totalTimeSeconds,
      correctCount, totalCount, unitBreakdownJson, updatedAt, synced);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WakeUpRecord &&
          other.id == this.id &&
          other.alarmId == this.alarmId &&
          other.date == this.date &&
          other.success == this.success &&
          other.totalTimeSeconds == this.totalTimeSeconds &&
          other.correctCount == this.correctCount &&
          other.totalCount == this.totalCount &&
          other.unitBreakdownJson == this.unitBreakdownJson &&
          other.updatedAt == this.updatedAt &&
          other.synced == this.synced);
}

class WakeUpRecordsCompanion extends UpdateCompanion<WakeUpRecord> {
  final Value<String> id;
  final Value<String?> alarmId;
  final Value<String> date;
  final Value<bool> success;
  final Value<int> totalTimeSeconds;
  final Value<int> correctCount;
  final Value<int> totalCount;
  final Value<String> unitBreakdownJson;
  final Value<int> updatedAt;
  final Value<bool> synced;
  final Value<int> rowid;
  const WakeUpRecordsCompanion({
    this.id = const Value.absent(),
    this.alarmId = const Value.absent(),
    this.date = const Value.absent(),
    this.success = const Value.absent(),
    this.totalTimeSeconds = const Value.absent(),
    this.correctCount = const Value.absent(),
    this.totalCount = const Value.absent(),
    this.unitBreakdownJson = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WakeUpRecordsCompanion.insert({
    required String id,
    this.alarmId = const Value.absent(),
    required String date,
    required bool success,
    required int totalTimeSeconds,
    required int correctCount,
    required int totalCount,
    required String unitBreakdownJson,
    required int updatedAt,
    this.synced = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        date = Value(date),
        success = Value(success),
        totalTimeSeconds = Value(totalTimeSeconds),
        correctCount = Value(correctCount),
        totalCount = Value(totalCount),
        unitBreakdownJson = Value(unitBreakdownJson),
        updatedAt = Value(updatedAt);
  static Insertable<WakeUpRecord> custom({
    Expression<String>? id,
    Expression<String>? alarmId,
    Expression<String>? date,
    Expression<bool>? success,
    Expression<int>? totalTimeSeconds,
    Expression<int>? correctCount,
    Expression<int>? totalCount,
    Expression<String>? unitBreakdownJson,
    Expression<int>? updatedAt,
    Expression<bool>? synced,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (alarmId != null) 'alarm_id': alarmId,
      if (date != null) 'date': date,
      if (success != null) 'success': success,
      if (totalTimeSeconds != null) 'total_time_seconds': totalTimeSeconds,
      if (correctCount != null) 'correct_count': correctCount,
      if (totalCount != null) 'total_count': totalCount,
      if (unitBreakdownJson != null) 'unit_breakdown_json': unitBreakdownJson,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (synced != null) 'synced': synced,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WakeUpRecordsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? alarmId,
      Value<String>? date,
      Value<bool>? success,
      Value<int>? totalTimeSeconds,
      Value<int>? correctCount,
      Value<int>? totalCount,
      Value<String>? unitBreakdownJson,
      Value<int>? updatedAt,
      Value<bool>? synced,
      Value<int>? rowid}) {
    return WakeUpRecordsCompanion(
      id: id ?? this.id,
      alarmId: alarmId ?? this.alarmId,
      date: date ?? this.date,
      success: success ?? this.success,
      totalTimeSeconds: totalTimeSeconds ?? this.totalTimeSeconds,
      correctCount: correctCount ?? this.correctCount,
      totalCount: totalCount ?? this.totalCount,
      unitBreakdownJson: unitBreakdownJson ?? this.unitBreakdownJson,
      updatedAt: updatedAt ?? this.updatedAt,
      synced: synced ?? this.synced,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (alarmId.present) {
      map['alarm_id'] = Variable<String>(alarmId.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (success.present) {
      map['success'] = Variable<bool>(success.value);
    }
    if (totalTimeSeconds.present) {
      map['total_time_seconds'] = Variable<int>(totalTimeSeconds.value);
    }
    if (correctCount.present) {
      map['correct_count'] = Variable<int>(correctCount.value);
    }
    if (totalCount.present) {
      map['total_count'] = Variable<int>(totalCount.value);
    }
    if (unitBreakdownJson.present) {
      map['unit_breakdown_json'] = Variable<String>(unitBreakdownJson.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (synced.present) {
      map['synced'] = Variable<bool>(synced.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WakeUpRecordsCompanion(')
          ..write('id: $id, ')
          ..write('alarmId: $alarmId, ')
          ..write('date: $date, ')
          ..write('success: $success, ')
          ..write('totalTimeSeconds: $totalTimeSeconds, ')
          ..write('correctCount: $correctCount, ')
          ..write('totalCount: $totalCount, ')
          ..write('unitBreakdownJson: $unitBreakdownJson, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('synced: $synced, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AlarmsTable alarms = $AlarmsTable(this);
  late final $AlarmUnitsTable alarmUnits = $AlarmUnitsTable(this);
  late final $CachedProblemsTable cachedProblems = $CachedProblemsTable(this);
  late final $WakeUpRecordsTable wakeUpRecords = $WakeUpRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [alarms, alarmUnits, cachedProblems, wakeUpRecords];
}

typedef $$AlarmsTableCreateCompanionBuilder = AlarmsCompanion Function({
  required String id,
  required String time,
  required String repeatDays,
  required int problemCount,
  required int difficulty,
  Value<int?> timeLimitSeconds,
  required bool rescueModeEnabled,
  required String soundFile,
  required bool enabled,
  required int updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});
typedef $$AlarmsTableUpdateCompanionBuilder = AlarmsCompanion Function({
  Value<String> id,
  Value<String> time,
  Value<String> repeatDays,
  Value<int> problemCount,
  Value<int> difficulty,
  Value<int?> timeLimitSeconds,
  Value<bool> rescueModeEnabled,
  Value<String> soundFile,
  Value<bool> enabled,
  Value<int> updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});

final class $$AlarmsTableReferences
    extends BaseReferences<_$AppDatabase, $AlarmsTable, Alarm> {
  $$AlarmsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AlarmUnitsTable, List<AlarmUnit>>
      _alarmUnitsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.alarmUnits,
              aliasName: 'alarms__id__alarm_units__alarm_id');

  $$AlarmUnitsTableProcessedTableManager get alarmUnitsRefs {
    final manager = $$AlarmUnitsTableTableManager($_db, $_db.alarmUnits)
        .filter((f) => f.alarmId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_alarmUnitsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CachedProblemsTable, List<CachedProblem>>
      _cachedProblemsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.cachedProblems,
              aliasName: 'alarms__id__cached_problems__alarm_id');

  $$CachedProblemsTableProcessedTableManager get cachedProblemsRefs {
    final manager = $$CachedProblemsTableTableManager($_db, $_db.cachedProblems)
        .filter((f) => f.alarmId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_cachedProblemsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$WakeUpRecordsTable, List<WakeUpRecord>>
      _wakeUpRecordsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.wakeUpRecords,
              aliasName: 'alarms__id__wake_up_records__alarm_id');

  $$WakeUpRecordsTableProcessedTableManager get wakeUpRecordsRefs {
    final manager = $$WakeUpRecordsTableTableManager($_db, $_db.wakeUpRecords)
        .filter((f) => f.alarmId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_wakeUpRecordsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AlarmsTableFilterComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get repeatDays => $composableBuilder(
      column: $table.repeatDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get problemCount => $composableBuilder(
      column: $table.problemCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timeLimitSeconds => $composableBuilder(
      column: $table.timeLimitSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get rescueModeEnabled => $composableBuilder(
      column: $table.rescueModeEnabled,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get soundFile => $composableBuilder(
      column: $table.soundFile, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get enabled => $composableBuilder(
      column: $table.enabled, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnFilters(column));

  Expression<bool> alarmUnitsRefs(
      Expression<bool> Function($$AlarmUnitsTableFilterComposer f) f) {
    final $$AlarmUnitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.alarmUnits,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmUnitsTableFilterComposer(
              $db: $db,
              $table: $db.alarmUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> cachedProblemsRefs(
      Expression<bool> Function($$CachedProblemsTableFilterComposer f) f) {
    final $$CachedProblemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.cachedProblems,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CachedProblemsTableFilterComposer(
              $db: $db,
              $table: $db.cachedProblems,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> wakeUpRecordsRefs(
      Expression<bool> Function($$WakeUpRecordsTableFilterComposer f) f) {
    final $$WakeUpRecordsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.wakeUpRecords,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WakeUpRecordsTableFilterComposer(
              $db: $db,
              $table: $db.wakeUpRecords,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AlarmsTableOrderingComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get time => $composableBuilder(
      column: $table.time, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get repeatDays => $composableBuilder(
      column: $table.repeatDays, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get problemCount => $composableBuilder(
      column: $table.problemCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timeLimitSeconds => $composableBuilder(
      column: $table.timeLimitSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get rescueModeEnabled => $composableBuilder(
      column: $table.rescueModeEnabled,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get soundFile => $composableBuilder(
      column: $table.soundFile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get enabled => $composableBuilder(
      column: $table.enabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnOrderings(column));
}

class $$AlarmsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get repeatDays => $composableBuilder(
      column: $table.repeatDays, builder: (column) => column);

  GeneratedColumn<int> get problemCount => $composableBuilder(
      column: $table.problemCount, builder: (column) => column);

  GeneratedColumn<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => column);

  GeneratedColumn<int> get timeLimitSeconds => $composableBuilder(
      column: $table.timeLimitSeconds, builder: (column) => column);

  GeneratedColumn<bool> get rescueModeEnabled => $composableBuilder(
      column: $table.rescueModeEnabled, builder: (column) => column);

  GeneratedColumn<String> get soundFile =>
      $composableBuilder(column: $table.soundFile, builder: (column) => column);

  GeneratedColumn<bool> get enabled =>
      $composableBuilder(column: $table.enabled, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  Expression<T> alarmUnitsRefs<T extends Object>(
      Expression<T> Function($$AlarmUnitsTableAnnotationComposer a) f) {
    final $$AlarmUnitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.alarmUnits,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmUnitsTableAnnotationComposer(
              $db: $db,
              $table: $db.alarmUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> cachedProblemsRefs<T extends Object>(
      Expression<T> Function($$CachedProblemsTableAnnotationComposer a) f) {
    final $$CachedProblemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.cachedProblems,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CachedProblemsTableAnnotationComposer(
              $db: $db,
              $table: $db.cachedProblems,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> wakeUpRecordsRefs<T extends Object>(
      Expression<T> Function($$WakeUpRecordsTableAnnotationComposer a) f) {
    final $$WakeUpRecordsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.wakeUpRecords,
        getReferencedColumn: (t) => t.alarmId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WakeUpRecordsTableAnnotationComposer(
              $db: $db,
              $table: $db.wakeUpRecords,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AlarmsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AlarmsTable,
    Alarm,
    $$AlarmsTableFilterComposer,
    $$AlarmsTableOrderingComposer,
    $$AlarmsTableAnnotationComposer,
    $$AlarmsTableCreateCompanionBuilder,
    $$AlarmsTableUpdateCompanionBuilder,
    (Alarm, $$AlarmsTableReferences),
    Alarm,
    PrefetchHooks Function(
        {bool alarmUnitsRefs,
        bool cachedProblemsRefs,
        bool wakeUpRecordsRefs})> {
  $$AlarmsTableTableManager(_$AppDatabase db, $AlarmsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AlarmsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AlarmsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AlarmsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> time = const Value.absent(),
            Value<String> repeatDays = const Value.absent(),
            Value<int> problemCount = const Value.absent(),
            Value<int> difficulty = const Value.absent(),
            Value<int?> timeLimitSeconds = const Value.absent(),
            Value<bool> rescueModeEnabled = const Value.absent(),
            Value<String> soundFile = const Value.absent(),
            Value<bool> enabled = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AlarmsCompanion(
            id: id,
            time: time,
            repeatDays: repeatDays,
            problemCount: problemCount,
            difficulty: difficulty,
            timeLimitSeconds: timeLimitSeconds,
            rescueModeEnabled: rescueModeEnabled,
            soundFile: soundFile,
            enabled: enabled,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String time,
            required String repeatDays,
            required int problemCount,
            required int difficulty,
            Value<int?> timeLimitSeconds = const Value.absent(),
            required bool rescueModeEnabled,
            required String soundFile,
            required bool enabled,
            required int updatedAt,
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AlarmsCompanion.insert(
            id: id,
            time: time,
            repeatDays: repeatDays,
            problemCount: problemCount,
            difficulty: difficulty,
            timeLimitSeconds: timeLimitSeconds,
            rescueModeEnabled: rescueModeEnabled,
            soundFile: soundFile,
            enabled: enabled,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$AlarmsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {alarmUnitsRefs = false,
              cachedProblemsRefs = false,
              wakeUpRecordsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (alarmUnitsRefs) db.alarmUnits,
                if (cachedProblemsRefs) db.cachedProblems,
                if (wakeUpRecordsRefs) db.wakeUpRecords
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (alarmUnitsRefs)
                    await $_getPrefetchedData<Alarm, $AlarmsTable, AlarmUnit>(
                        currentTable: table,
                        referencedTable:
                            $$AlarmsTableReferences._alarmUnitsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AlarmsTableReferences(db, table, p0)
                                .alarmUnitsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.alarmId == item.id),
                        typedResults: items),
                  if (cachedProblemsRefs)
                    await $_getPrefetchedData<Alarm, $AlarmsTable,
                            CachedProblem>(
                        currentTable: table,
                        referencedTable: $$AlarmsTableReferences
                            ._cachedProblemsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AlarmsTableReferences(db, table, p0)
                                .cachedProblemsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.alarmId == item.id),
                        typedResults: items),
                  if (wakeUpRecordsRefs)
                    await $_getPrefetchedData<Alarm, $AlarmsTable,
                            WakeUpRecord>(
                        currentTable: table,
                        referencedTable:
                            $$AlarmsTableReferences._wakeUpRecordsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AlarmsTableReferences(db, table, p0)
                                .wakeUpRecordsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.alarmId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AlarmsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AlarmsTable,
    Alarm,
    $$AlarmsTableFilterComposer,
    $$AlarmsTableOrderingComposer,
    $$AlarmsTableAnnotationComposer,
    $$AlarmsTableCreateCompanionBuilder,
    $$AlarmsTableUpdateCompanionBuilder,
    (Alarm, $$AlarmsTableReferences),
    Alarm,
    PrefetchHooks Function(
        {bool alarmUnitsRefs,
        bool cachedProblemsRefs,
        bool wakeUpRecordsRefs})>;
typedef $$AlarmUnitsTableCreateCompanionBuilder = AlarmUnitsCompanion Function({
  required String alarmId,
  required String unitId,
  required double ratio,
  required int updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});
typedef $$AlarmUnitsTableUpdateCompanionBuilder = AlarmUnitsCompanion Function({
  Value<String> alarmId,
  Value<String> unitId,
  Value<double> ratio,
  Value<int> updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});

final class $$AlarmUnitsTableReferences
    extends BaseReferences<_$AppDatabase, $AlarmUnitsTable, AlarmUnit> {
  $$AlarmUnitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AlarmsTable _alarmIdTable(_$AppDatabase db) =>
      db.alarms.createAlias('alarm_units__alarm_id__alarms__id');

  $$AlarmsTableProcessedTableManager get alarmId {
    final $_column = $_itemColumn<String>('alarm_id')!;

    final manager = $$AlarmsTableTableManager($_db, $_db.alarms)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_alarmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AlarmUnitsTableFilterComposer
    extends Composer<_$AppDatabase, $AlarmUnitsTable> {
  $$AlarmUnitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get unitId => $composableBuilder(
      column: $table.unitId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get ratio => $composableBuilder(
      column: $table.ratio, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnFilters(column));

  $$AlarmsTableFilterComposer get alarmId {
    final $$AlarmsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableFilterComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AlarmUnitsTableOrderingComposer
    extends Composer<_$AppDatabase, $AlarmUnitsTable> {
  $$AlarmUnitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get unitId => $composableBuilder(
      column: $table.unitId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get ratio => $composableBuilder(
      column: $table.ratio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnOrderings(column));

  $$AlarmsTableOrderingComposer get alarmId {
    final $$AlarmsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableOrderingComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AlarmUnitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AlarmUnitsTable> {
  $$AlarmUnitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get unitId =>
      $composableBuilder(column: $table.unitId, builder: (column) => column);

  GeneratedColumn<double> get ratio =>
      $composableBuilder(column: $table.ratio, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  $$AlarmsTableAnnotationComposer get alarmId {
    final $$AlarmsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableAnnotationComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AlarmUnitsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AlarmUnitsTable,
    AlarmUnit,
    $$AlarmUnitsTableFilterComposer,
    $$AlarmUnitsTableOrderingComposer,
    $$AlarmUnitsTableAnnotationComposer,
    $$AlarmUnitsTableCreateCompanionBuilder,
    $$AlarmUnitsTableUpdateCompanionBuilder,
    (AlarmUnit, $$AlarmUnitsTableReferences),
    AlarmUnit,
    PrefetchHooks Function({bool alarmId})> {
  $$AlarmUnitsTableTableManager(_$AppDatabase db, $AlarmUnitsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AlarmUnitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AlarmUnitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AlarmUnitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> alarmId = const Value.absent(),
            Value<String> unitId = const Value.absent(),
            Value<double> ratio = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AlarmUnitsCompanion(
            alarmId: alarmId,
            unitId: unitId,
            ratio: ratio,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String alarmId,
            required String unitId,
            required double ratio,
            required int updatedAt,
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AlarmUnitsCompanion.insert(
            alarmId: alarmId,
            unitId: unitId,
            ratio: ratio,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AlarmUnitsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({alarmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (alarmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.alarmId,
                    referencedTable:
                        $$AlarmUnitsTableReferences._alarmIdTable(db),
                    referencedColumn:
                        $$AlarmUnitsTableReferences._alarmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AlarmUnitsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AlarmUnitsTable,
    AlarmUnit,
    $$AlarmUnitsTableFilterComposer,
    $$AlarmUnitsTableOrderingComposer,
    $$AlarmUnitsTableAnnotationComposer,
    $$AlarmUnitsTableCreateCompanionBuilder,
    $$AlarmUnitsTableUpdateCompanionBuilder,
    (AlarmUnit, $$AlarmUnitsTableReferences),
    AlarmUnit,
    PrefetchHooks Function({bool alarmId})>;
typedef $$CachedProblemsTableCreateCompanionBuilder = CachedProblemsCompanion
    Function({
  required String id,
  Value<String?> alarmId,
  required String unit,
  required int difficulty,
  required String questionText,
  required String answerJson,
  required int seed,
  required int createdAt,
  required int updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});
typedef $$CachedProblemsTableUpdateCompanionBuilder = CachedProblemsCompanion
    Function({
  Value<String> id,
  Value<String?> alarmId,
  Value<String> unit,
  Value<int> difficulty,
  Value<String> questionText,
  Value<String> answerJson,
  Value<int> seed,
  Value<int> createdAt,
  Value<int> updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});

final class $$CachedProblemsTableReferences
    extends BaseReferences<_$AppDatabase, $CachedProblemsTable, CachedProblem> {
  $$CachedProblemsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $AlarmsTable _alarmIdTable(_$AppDatabase db) =>
      db.alarms.createAlias('cached_problems__alarm_id__alarms__id');

  $$AlarmsTableProcessedTableManager? get alarmId {
    final $_column = $_itemColumn<String>('alarm_id');
    if ($_column == null) return null;
    final manager = $$AlarmsTableTableManager($_db, $_db.alarms)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_alarmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CachedProblemsTableFilterComposer
    extends Composer<_$AppDatabase, $CachedProblemsTable> {
  $$CachedProblemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get questionText => $composableBuilder(
      column: $table.questionText, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answerJson => $composableBuilder(
      column: $table.answerJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seed => $composableBuilder(
      column: $table.seed, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnFilters(column));

  $$AlarmsTableFilterComposer get alarmId {
    final $$AlarmsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableFilterComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CachedProblemsTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedProblemsTable> {
  $$CachedProblemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unit => $composableBuilder(
      column: $table.unit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get questionText => $composableBuilder(
      column: $table.questionText,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answerJson => $composableBuilder(
      column: $table.answerJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seed => $composableBuilder(
      column: $table.seed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnOrderings(column));

  $$AlarmsTableOrderingComposer get alarmId {
    final $$AlarmsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableOrderingComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CachedProblemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedProblemsTable> {
  $$CachedProblemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<int> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => column);

  GeneratedColumn<String> get questionText => $composableBuilder(
      column: $table.questionText, builder: (column) => column);

  GeneratedColumn<String> get answerJson => $composableBuilder(
      column: $table.answerJson, builder: (column) => column);

  GeneratedColumn<int> get seed =>
      $composableBuilder(column: $table.seed, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  $$AlarmsTableAnnotationComposer get alarmId {
    final $$AlarmsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableAnnotationComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CachedProblemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CachedProblemsTable,
    CachedProblem,
    $$CachedProblemsTableFilterComposer,
    $$CachedProblemsTableOrderingComposer,
    $$CachedProblemsTableAnnotationComposer,
    $$CachedProblemsTableCreateCompanionBuilder,
    $$CachedProblemsTableUpdateCompanionBuilder,
    (CachedProblem, $$CachedProblemsTableReferences),
    CachedProblem,
    PrefetchHooks Function({bool alarmId})> {
  $$CachedProblemsTableTableManager(
      _$AppDatabase db, $CachedProblemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedProblemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedProblemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedProblemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> alarmId = const Value.absent(),
            Value<String> unit = const Value.absent(),
            Value<int> difficulty = const Value.absent(),
            Value<String> questionText = const Value.absent(),
            Value<String> answerJson = const Value.absent(),
            Value<int> seed = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedProblemsCompanion(
            id: id,
            alarmId: alarmId,
            unit: unit,
            difficulty: difficulty,
            questionText: questionText,
            answerJson: answerJson,
            seed: seed,
            createdAt: createdAt,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> alarmId = const Value.absent(),
            required String unit,
            required int difficulty,
            required String questionText,
            required String answerJson,
            required int seed,
            required int createdAt,
            required int updatedAt,
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedProblemsCompanion.insert(
            id: id,
            alarmId: alarmId,
            unit: unit,
            difficulty: difficulty,
            questionText: questionText,
            answerJson: answerJson,
            seed: seed,
            createdAt: createdAt,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CachedProblemsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({alarmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (alarmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.alarmId,
                    referencedTable:
                        $$CachedProblemsTableReferences._alarmIdTable(db),
                    referencedColumn:
                        $$CachedProblemsTableReferences._alarmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CachedProblemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CachedProblemsTable,
    CachedProblem,
    $$CachedProblemsTableFilterComposer,
    $$CachedProblemsTableOrderingComposer,
    $$CachedProblemsTableAnnotationComposer,
    $$CachedProblemsTableCreateCompanionBuilder,
    $$CachedProblemsTableUpdateCompanionBuilder,
    (CachedProblem, $$CachedProblemsTableReferences),
    CachedProblem,
    PrefetchHooks Function({bool alarmId})>;
typedef $$WakeUpRecordsTableCreateCompanionBuilder = WakeUpRecordsCompanion
    Function({
  required String id,
  Value<String?> alarmId,
  required String date,
  required bool success,
  required int totalTimeSeconds,
  required int correctCount,
  required int totalCount,
  required String unitBreakdownJson,
  required int updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});
typedef $$WakeUpRecordsTableUpdateCompanionBuilder = WakeUpRecordsCompanion
    Function({
  Value<String> id,
  Value<String?> alarmId,
  Value<String> date,
  Value<bool> success,
  Value<int> totalTimeSeconds,
  Value<int> correctCount,
  Value<int> totalCount,
  Value<String> unitBreakdownJson,
  Value<int> updatedAt,
  Value<bool> synced,
  Value<int> rowid,
});

final class $$WakeUpRecordsTableReferences
    extends BaseReferences<_$AppDatabase, $WakeUpRecordsTable, WakeUpRecord> {
  $$WakeUpRecordsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $AlarmsTable _alarmIdTable(_$AppDatabase db) =>
      db.alarms.createAlias('wake_up_records__alarm_id__alarms__id');

  $$AlarmsTableProcessedTableManager? get alarmId {
    final $_column = $_itemColumn<String>('alarm_id');
    if ($_column == null) return null;
    final manager = $$AlarmsTableTableManager($_db, $_db.alarms)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_alarmIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$WakeUpRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $WakeUpRecordsTable> {
  $$WakeUpRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get success => $composableBuilder(
      column: $table.success, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalTimeSeconds => $composableBuilder(
      column: $table.totalTimeSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get correctCount => $composableBuilder(
      column: $table.correctCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalCount => $composableBuilder(
      column: $table.totalCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unitBreakdownJson => $composableBuilder(
      column: $table.unitBreakdownJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnFilters(column));

  $$AlarmsTableFilterComposer get alarmId {
    final $$AlarmsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableFilterComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WakeUpRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $WakeUpRecordsTable> {
  $$WakeUpRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get success => $composableBuilder(
      column: $table.success, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalTimeSeconds => $composableBuilder(
      column: $table.totalTimeSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get correctCount => $composableBuilder(
      column: $table.correctCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalCount => $composableBuilder(
      column: $table.totalCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unitBreakdownJson => $composableBuilder(
      column: $table.unitBreakdownJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get synced => $composableBuilder(
      column: $table.synced, builder: (column) => ColumnOrderings(column));

  $$AlarmsTableOrderingComposer get alarmId {
    final $$AlarmsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableOrderingComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WakeUpRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WakeUpRecordsTable> {
  $$WakeUpRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<bool> get success =>
      $composableBuilder(column: $table.success, builder: (column) => column);

  GeneratedColumn<int> get totalTimeSeconds => $composableBuilder(
      column: $table.totalTimeSeconds, builder: (column) => column);

  GeneratedColumn<int> get correctCount => $composableBuilder(
      column: $table.correctCount, builder: (column) => column);

  GeneratedColumn<int> get totalCount => $composableBuilder(
      column: $table.totalCount, builder: (column) => column);

  GeneratedColumn<String> get unitBreakdownJson => $composableBuilder(
      column: $table.unitBreakdownJson, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get synced =>
      $composableBuilder(column: $table.synced, builder: (column) => column);

  $$AlarmsTableAnnotationComposer get alarmId {
    final $$AlarmsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.alarmId,
        referencedTable: $db.alarms,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AlarmsTableAnnotationComposer(
              $db: $db,
              $table: $db.alarms,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$WakeUpRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $WakeUpRecordsTable,
    WakeUpRecord,
    $$WakeUpRecordsTableFilterComposer,
    $$WakeUpRecordsTableOrderingComposer,
    $$WakeUpRecordsTableAnnotationComposer,
    $$WakeUpRecordsTableCreateCompanionBuilder,
    $$WakeUpRecordsTableUpdateCompanionBuilder,
    (WakeUpRecord, $$WakeUpRecordsTableReferences),
    WakeUpRecord,
    PrefetchHooks Function({bool alarmId})> {
  $$WakeUpRecordsTableTableManager(_$AppDatabase db, $WakeUpRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WakeUpRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WakeUpRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WakeUpRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> alarmId = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<bool> success = const Value.absent(),
            Value<int> totalTimeSeconds = const Value.absent(),
            Value<int> correctCount = const Value.absent(),
            Value<int> totalCount = const Value.absent(),
            Value<String> unitBreakdownJson = const Value.absent(),
            Value<int> updatedAt = const Value.absent(),
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WakeUpRecordsCompanion(
            id: id,
            alarmId: alarmId,
            date: date,
            success: success,
            totalTimeSeconds: totalTimeSeconds,
            correctCount: correctCount,
            totalCount: totalCount,
            unitBreakdownJson: unitBreakdownJson,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> alarmId = const Value.absent(),
            required String date,
            required bool success,
            required int totalTimeSeconds,
            required int correctCount,
            required int totalCount,
            required String unitBreakdownJson,
            required int updatedAt,
            Value<bool> synced = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WakeUpRecordsCompanion.insert(
            id: id,
            alarmId: alarmId,
            date: date,
            success: success,
            totalTimeSeconds: totalTimeSeconds,
            correctCount: correctCount,
            totalCount: totalCount,
            unitBreakdownJson: unitBreakdownJson,
            updatedAt: updatedAt,
            synced: synced,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$WakeUpRecordsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({alarmId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (alarmId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.alarmId,
                    referencedTable:
                        $$WakeUpRecordsTableReferences._alarmIdTable(db),
                    referencedColumn:
                        $$WakeUpRecordsTableReferences._alarmIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$WakeUpRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $WakeUpRecordsTable,
    WakeUpRecord,
    $$WakeUpRecordsTableFilterComposer,
    $$WakeUpRecordsTableOrderingComposer,
    $$WakeUpRecordsTableAnnotationComposer,
    $$WakeUpRecordsTableCreateCompanionBuilder,
    $$WakeUpRecordsTableUpdateCompanionBuilder,
    (WakeUpRecord, $$WakeUpRecordsTableReferences),
    WakeUpRecord,
    PrefetchHooks Function({bool alarmId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AlarmsTableTableManager get alarms =>
      $$AlarmsTableTableManager(_db, _db.alarms);
  $$AlarmUnitsTableTableManager get alarmUnits =>
      $$AlarmUnitsTableTableManager(_db, _db.alarmUnits);
  $$CachedProblemsTableTableManager get cachedProblems =>
      $$CachedProblemsTableTableManager(_db, _db.cachedProblems);
  $$WakeUpRecordsTableTableManager get wakeUpRecords =>
      $$WakeUpRecordsTableTableManager(_db, _db.wakeUpRecords);
}
