// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $EpisodesTable extends Episodes with TableInfo<$EpisodesTable, Episode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EpisodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _guidMeta = const VerificationMeta('guid');
  @override
  late final GeneratedColumn<String> guid = GeneratedColumn<String>(
      'guid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _datePublishedMeta =
      const VerificationMeta('datePublished');
  @override
  late final GeneratedColumn<int> datePublished = GeneratedColumn<int>(
      'date_published', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _enclosureUrlMeta =
      const VerificationMeta('enclosureUrl');
  @override
  late final GeneratedColumn<String> enclosureUrl = GeneratedColumn<String>(
      'enclosure_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enclosureTypeMeta =
      const VerificationMeta('enclosureType');
  @override
  late final GeneratedColumn<String> enclosureType = GeneratedColumn<String>(
      'enclosure_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enclosureLengthMeta =
      const VerificationMeta('enclosureLength');
  @override
  late final GeneratedColumn<int> enclosureLength = GeneratedColumn<int>(
      'enclosure_length', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _durationMeta =
      const VerificationMeta('duration');
  @override
  late final GeneratedColumn<int> duration = GeneratedColumn<int>(
      'duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _explicitMeta =
      const VerificationMeta('explicit');
  @override
  late final GeneratedColumn<bool> explicit = GeneratedColumn<bool>(
      'explicit', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("explicit" IN (0, 1))'));
  static const VerificationMeta _episodeNumberMeta =
      const VerificationMeta('episodeNumber');
  @override
  late final GeneratedColumn<int> episodeNumber = GeneratedColumn<int>(
      'episode_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _episodeTypeMeta =
      const VerificationMeta('episodeType');
  @override
  late final GeneratedColumn<String> episodeType = GeneratedColumn<String>(
      'episode_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _seasonNumberMeta =
      const VerificationMeta('seasonNumber');
  @override
  late final GeneratedColumn<int> seasonNumber = GeneratedColumn<int>(
      'season_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedImageMeta =
      const VerificationMeta('feedImage');
  @override
  late final GeneratedColumn<String> feedImage = GeneratedColumn<String>(
      'feed_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedIdMeta = const VerificationMeta('feedId');
  @override
  late final GeneratedColumn<int> feedId = GeneratedColumn<int>(
      'feed_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isPlayedMeta =
      const VerificationMeta('isPlayed');
  @override
  late final GeneratedColumn<bool> isPlayed = GeneratedColumn<bool>(
      'is_played', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_played" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        guid,
        title,
        link,
        description,
        datePublished,
        enclosureUrl,
        enclosureType,
        enclosureLength,
        duration,
        explicit,
        episodeNumber,
        episodeType,
        seasonNumber,
        image,
        feedImage,
        feedId,
        isPlayed
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'episodes';
  @override
  VerificationContext validateIntegrity(Insertable<Episode> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('guid')) {
      context.handle(
          _guidMeta, guid.isAcceptableOrUnknown(data['guid']!, _guidMeta));
    } else if (isInserting) {
      context.missing(_guidMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('date_published')) {
      context.handle(
          _datePublishedMeta,
          datePublished.isAcceptableOrUnknown(
              data['date_published']!, _datePublishedMeta));
    } else if (isInserting) {
      context.missing(_datePublishedMeta);
    }
    if (data.containsKey('enclosure_url')) {
      context.handle(
          _enclosureUrlMeta,
          enclosureUrl.isAcceptableOrUnknown(
              data['enclosure_url']!, _enclosureUrlMeta));
    } else if (isInserting) {
      context.missing(_enclosureUrlMeta);
    }
    if (data.containsKey('enclosure_type')) {
      context.handle(
          _enclosureTypeMeta,
          enclosureType.isAcceptableOrUnknown(
              data['enclosure_type']!, _enclosureTypeMeta));
    } else if (isInserting) {
      context.missing(_enclosureTypeMeta);
    }
    if (data.containsKey('enclosure_length')) {
      context.handle(
          _enclosureLengthMeta,
          enclosureLength.isAcceptableOrUnknown(
              data['enclosure_length']!, _enclosureLengthMeta));
    } else if (isInserting) {
      context.missing(_enclosureLengthMeta);
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));
    } else if (isInserting) {
      context.missing(_durationMeta);
    }
    if (data.containsKey('explicit')) {
      context.handle(_explicitMeta,
          explicit.isAcceptableOrUnknown(data['explicit']!, _explicitMeta));
    } else if (isInserting) {
      context.missing(_explicitMeta);
    }
    if (data.containsKey('episode_number')) {
      context.handle(
          _episodeNumberMeta,
          episodeNumber.isAcceptableOrUnknown(
              data['episode_number']!, _episodeNumberMeta));
    } else if (isInserting) {
      context.missing(_episodeNumberMeta);
    }
    if (data.containsKey('episode_type')) {
      context.handle(
          _episodeTypeMeta,
          episodeType.isAcceptableOrUnknown(
              data['episode_type']!, _episodeTypeMeta));
    } else if (isInserting) {
      context.missing(_episodeTypeMeta);
    }
    if (data.containsKey('season_number')) {
      context.handle(
          _seasonNumberMeta,
          seasonNumber.isAcceptableOrUnknown(
              data['season_number']!, _seasonNumberMeta));
    } else if (isInserting) {
      context.missing(_seasonNumberMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('feed_image')) {
      context.handle(_feedImageMeta,
          feedImage.isAcceptableOrUnknown(data['feed_image']!, _feedImageMeta));
    } else if (isInserting) {
      context.missing(_feedImageMeta);
    }
    if (data.containsKey('feed_id')) {
      context.handle(_feedIdMeta,
          feedId.isAcceptableOrUnknown(data['feed_id']!, _feedIdMeta));
    } else if (isInserting) {
      context.missing(_feedIdMeta);
    }
    if (data.containsKey('is_played')) {
      context.handle(_isPlayedMeta,
          isPlayed.isAcceptableOrUnknown(data['is_played']!, _isPlayedMeta));
    } else if (isInserting) {
      context.missing(_isPlayedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Episode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Episode(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      guid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}guid'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      datePublished: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}date_published'])!,
      enclosureUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}enclosure_url'])!,
      enclosureType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}enclosure_type'])!,
      enclosureLength: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}enclosure_length'])!,
      duration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration'])!,
      explicit: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}explicit'])!,
      episodeNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_number'])!,
      episodeType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}episode_type'])!,
      seasonNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}season_number'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      feedImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_image'])!,
      feedId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}feed_id'])!,
      isPlayed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_played'])!,
    );
  }

  @override
  $EpisodesTable createAlias(String alias) {
    return $EpisodesTable(attachedDatabase, alias);
  }
}

class Episode extends DataClass implements Insertable<Episode> {
  final int id;
  final String guid;
  final String title;
  final String link;
  final String description;
  final int datePublished;
  final String enclosureUrl;
  final String enclosureType;
  final int enclosureLength;
  final int duration;
  final bool explicit;
  final int episodeNumber;
  final String episodeType;
  final int seasonNumber;
  final String image;
  final String feedImage;
  final int feedId;
  final bool isPlayed;
  const Episode(
      {required this.id,
      required this.guid,
      required this.title,
      required this.link,
      required this.description,
      required this.datePublished,
      required this.enclosureUrl,
      required this.enclosureType,
      required this.enclosureLength,
      required this.duration,
      required this.explicit,
      required this.episodeNumber,
      required this.episodeType,
      required this.seasonNumber,
      required this.image,
      required this.feedImage,
      required this.feedId,
      required this.isPlayed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['guid'] = Variable<String>(guid);
    map['title'] = Variable<String>(title);
    map['link'] = Variable<String>(link);
    map['description'] = Variable<String>(description);
    map['date_published'] = Variable<int>(datePublished);
    map['enclosure_url'] = Variable<String>(enclosureUrl);
    map['enclosure_type'] = Variable<String>(enclosureType);
    map['enclosure_length'] = Variable<int>(enclosureLength);
    map['duration'] = Variable<int>(duration);
    map['explicit'] = Variable<bool>(explicit);
    map['episode_number'] = Variable<int>(episodeNumber);
    map['episode_type'] = Variable<String>(episodeType);
    map['season_number'] = Variable<int>(seasonNumber);
    map['image'] = Variable<String>(image);
    map['feed_image'] = Variable<String>(feedImage);
    map['feed_id'] = Variable<int>(feedId);
    map['is_played'] = Variable<bool>(isPlayed);
    return map;
  }

  EpisodesCompanion toCompanion(bool nullToAbsent) {
    return EpisodesCompanion(
      id: Value(id),
      guid: Value(guid),
      title: Value(title),
      link: Value(link),
      description: Value(description),
      datePublished: Value(datePublished),
      enclosureUrl: Value(enclosureUrl),
      enclosureType: Value(enclosureType),
      enclosureLength: Value(enclosureLength),
      duration: Value(duration),
      explicit: Value(explicit),
      episodeNumber: Value(episodeNumber),
      episodeType: Value(episodeType),
      seasonNumber: Value(seasonNumber),
      image: Value(image),
      feedImage: Value(feedImage),
      feedId: Value(feedId),
      isPlayed: Value(isPlayed),
    );
  }

  factory Episode.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Episode(
      id: serializer.fromJson<int>(json['id']),
      guid: serializer.fromJson<String>(json['guid']),
      title: serializer.fromJson<String>(json['title']),
      link: serializer.fromJson<String>(json['link']),
      description: serializer.fromJson<String>(json['description']),
      datePublished: serializer.fromJson<int>(json['datePublished']),
      enclosureUrl: serializer.fromJson<String>(json['enclosureUrl']),
      enclosureType: serializer.fromJson<String>(json['enclosureType']),
      enclosureLength: serializer.fromJson<int>(json['enclosureLength']),
      duration: serializer.fromJson<int>(json['duration']),
      explicit: serializer.fromJson<bool>(json['explicit']),
      episodeNumber: serializer.fromJson<int>(json['episodeNumber']),
      episodeType: serializer.fromJson<String>(json['episodeType']),
      seasonNumber: serializer.fromJson<int>(json['seasonNumber']),
      image: serializer.fromJson<String>(json['image']),
      feedImage: serializer.fromJson<String>(json['feedImage']),
      feedId: serializer.fromJson<int>(json['feedId']),
      isPlayed: serializer.fromJson<bool>(json['isPlayed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'guid': serializer.toJson<String>(guid),
      'title': serializer.toJson<String>(title),
      'link': serializer.toJson<String>(link),
      'description': serializer.toJson<String>(description),
      'datePublished': serializer.toJson<int>(datePublished),
      'enclosureUrl': serializer.toJson<String>(enclosureUrl),
      'enclosureType': serializer.toJson<String>(enclosureType),
      'enclosureLength': serializer.toJson<int>(enclosureLength),
      'duration': serializer.toJson<int>(duration),
      'explicit': serializer.toJson<bool>(explicit),
      'episodeNumber': serializer.toJson<int>(episodeNumber),
      'episodeType': serializer.toJson<String>(episodeType),
      'seasonNumber': serializer.toJson<int>(seasonNumber),
      'image': serializer.toJson<String>(image),
      'feedImage': serializer.toJson<String>(feedImage),
      'feedId': serializer.toJson<int>(feedId),
      'isPlayed': serializer.toJson<bool>(isPlayed),
    };
  }

  Episode copyWith(
          {int? id,
          String? guid,
          String? title,
          String? link,
          String? description,
          int? datePublished,
          String? enclosureUrl,
          String? enclosureType,
          int? enclosureLength,
          int? duration,
          bool? explicit,
          int? episodeNumber,
          String? episodeType,
          int? seasonNumber,
          String? image,
          String? feedImage,
          int? feedId,
          bool? isPlayed}) =>
      Episode(
        id: id ?? this.id,
        guid: guid ?? this.guid,
        title: title ?? this.title,
        link: link ?? this.link,
        description: description ?? this.description,
        datePublished: datePublished ?? this.datePublished,
        enclosureUrl: enclosureUrl ?? this.enclosureUrl,
        enclosureType: enclosureType ?? this.enclosureType,
        enclosureLength: enclosureLength ?? this.enclosureLength,
        duration: duration ?? this.duration,
        explicit: explicit ?? this.explicit,
        episodeNumber: episodeNumber ?? this.episodeNumber,
        episodeType: episodeType ?? this.episodeType,
        seasonNumber: seasonNumber ?? this.seasonNumber,
        image: image ?? this.image,
        feedImage: feedImage ?? this.feedImage,
        feedId: feedId ?? this.feedId,
        isPlayed: isPlayed ?? this.isPlayed,
      );
  Episode copyWithCompanion(EpisodesCompanion data) {
    return Episode(
      id: data.id.present ? data.id.value : this.id,
      guid: data.guid.present ? data.guid.value : this.guid,
      title: data.title.present ? data.title.value : this.title,
      link: data.link.present ? data.link.value : this.link,
      description:
          data.description.present ? data.description.value : this.description,
      datePublished: data.datePublished.present
          ? data.datePublished.value
          : this.datePublished,
      enclosureUrl: data.enclosureUrl.present
          ? data.enclosureUrl.value
          : this.enclosureUrl,
      enclosureType: data.enclosureType.present
          ? data.enclosureType.value
          : this.enclosureType,
      enclosureLength: data.enclosureLength.present
          ? data.enclosureLength.value
          : this.enclosureLength,
      duration: data.duration.present ? data.duration.value : this.duration,
      explicit: data.explicit.present ? data.explicit.value : this.explicit,
      episodeNumber: data.episodeNumber.present
          ? data.episodeNumber.value
          : this.episodeNumber,
      episodeType:
          data.episodeType.present ? data.episodeType.value : this.episodeType,
      seasonNumber: data.seasonNumber.present
          ? data.seasonNumber.value
          : this.seasonNumber,
      image: data.image.present ? data.image.value : this.image,
      feedImage: data.feedImage.present ? data.feedImage.value : this.feedImage,
      feedId: data.feedId.present ? data.feedId.value : this.feedId,
      isPlayed: data.isPlayed.present ? data.isPlayed.value : this.isPlayed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Episode(')
          ..write('id: $id, ')
          ..write('guid: $guid, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('datePublished: $datePublished, ')
          ..write('enclosureUrl: $enclosureUrl, ')
          ..write('enclosureType: $enclosureType, ')
          ..write('enclosureLength: $enclosureLength, ')
          ..write('duration: $duration, ')
          ..write('explicit: $explicit, ')
          ..write('episodeNumber: $episodeNumber, ')
          ..write('episodeType: $episodeType, ')
          ..write('seasonNumber: $seasonNumber, ')
          ..write('image: $image, ')
          ..write('feedImage: $feedImage, ')
          ..write('feedId: $feedId, ')
          ..write('isPlayed: $isPlayed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      guid,
      title,
      link,
      description,
      datePublished,
      enclosureUrl,
      enclosureType,
      enclosureLength,
      duration,
      explicit,
      episodeNumber,
      episodeType,
      seasonNumber,
      image,
      feedImage,
      feedId,
      isPlayed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Episode &&
          other.id == this.id &&
          other.guid == this.guid &&
          other.title == this.title &&
          other.link == this.link &&
          other.description == this.description &&
          other.datePublished == this.datePublished &&
          other.enclosureUrl == this.enclosureUrl &&
          other.enclosureType == this.enclosureType &&
          other.enclosureLength == this.enclosureLength &&
          other.duration == this.duration &&
          other.explicit == this.explicit &&
          other.episodeNumber == this.episodeNumber &&
          other.episodeType == this.episodeType &&
          other.seasonNumber == this.seasonNumber &&
          other.image == this.image &&
          other.feedImage == this.feedImage &&
          other.feedId == this.feedId &&
          other.isPlayed == this.isPlayed);
}

class EpisodesCompanion extends UpdateCompanion<Episode> {
  final Value<int> id;
  final Value<String> guid;
  final Value<String> title;
  final Value<String> link;
  final Value<String> description;
  final Value<int> datePublished;
  final Value<String> enclosureUrl;
  final Value<String> enclosureType;
  final Value<int> enclosureLength;
  final Value<int> duration;
  final Value<bool> explicit;
  final Value<int> episodeNumber;
  final Value<String> episodeType;
  final Value<int> seasonNumber;
  final Value<String> image;
  final Value<String> feedImage;
  final Value<int> feedId;
  final Value<bool> isPlayed;
  const EpisodesCompanion({
    this.id = const Value.absent(),
    this.guid = const Value.absent(),
    this.title = const Value.absent(),
    this.link = const Value.absent(),
    this.description = const Value.absent(),
    this.datePublished = const Value.absent(),
    this.enclosureUrl = const Value.absent(),
    this.enclosureType = const Value.absent(),
    this.enclosureLength = const Value.absent(),
    this.duration = const Value.absent(),
    this.explicit = const Value.absent(),
    this.episodeNumber = const Value.absent(),
    this.episodeType = const Value.absent(),
    this.seasonNumber = const Value.absent(),
    this.image = const Value.absent(),
    this.feedImage = const Value.absent(),
    this.feedId = const Value.absent(),
    this.isPlayed = const Value.absent(),
  });
  EpisodesCompanion.insert({
    this.id = const Value.absent(),
    required String guid,
    required String title,
    required String link,
    required String description,
    required int datePublished,
    required String enclosureUrl,
    required String enclosureType,
    required int enclosureLength,
    required int duration,
    required bool explicit,
    required int episodeNumber,
    required String episodeType,
    required int seasonNumber,
    required String image,
    required String feedImage,
    required int feedId,
    required bool isPlayed,
  })  : guid = Value(guid),
        title = Value(title),
        link = Value(link),
        description = Value(description),
        datePublished = Value(datePublished),
        enclosureUrl = Value(enclosureUrl),
        enclosureType = Value(enclosureType),
        enclosureLength = Value(enclosureLength),
        duration = Value(duration),
        explicit = Value(explicit),
        episodeNumber = Value(episodeNumber),
        episodeType = Value(episodeType),
        seasonNumber = Value(seasonNumber),
        image = Value(image),
        feedImage = Value(feedImage),
        feedId = Value(feedId),
        isPlayed = Value(isPlayed);
  static Insertable<Episode> custom({
    Expression<int>? id,
    Expression<String>? guid,
    Expression<String>? title,
    Expression<String>? link,
    Expression<String>? description,
    Expression<int>? datePublished,
    Expression<String>? enclosureUrl,
    Expression<String>? enclosureType,
    Expression<int>? enclosureLength,
    Expression<int>? duration,
    Expression<bool>? explicit,
    Expression<int>? episodeNumber,
    Expression<String>? episodeType,
    Expression<int>? seasonNumber,
    Expression<String>? image,
    Expression<String>? feedImage,
    Expression<int>? feedId,
    Expression<bool>? isPlayed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (guid != null) 'guid': guid,
      if (title != null) 'title': title,
      if (link != null) 'link': link,
      if (description != null) 'description': description,
      if (datePublished != null) 'date_published': datePublished,
      if (enclosureUrl != null) 'enclosure_url': enclosureUrl,
      if (enclosureType != null) 'enclosure_type': enclosureType,
      if (enclosureLength != null) 'enclosure_length': enclosureLength,
      if (duration != null) 'duration': duration,
      if (explicit != null) 'explicit': explicit,
      if (episodeNumber != null) 'episode_number': episodeNumber,
      if (episodeType != null) 'episode_type': episodeType,
      if (seasonNumber != null) 'season_number': seasonNumber,
      if (image != null) 'image': image,
      if (feedImage != null) 'feed_image': feedImage,
      if (feedId != null) 'feed_id': feedId,
      if (isPlayed != null) 'is_played': isPlayed,
    });
  }

  EpisodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? guid,
      Value<String>? title,
      Value<String>? link,
      Value<String>? description,
      Value<int>? datePublished,
      Value<String>? enclosureUrl,
      Value<String>? enclosureType,
      Value<int>? enclosureLength,
      Value<int>? duration,
      Value<bool>? explicit,
      Value<int>? episodeNumber,
      Value<String>? episodeType,
      Value<int>? seasonNumber,
      Value<String>? image,
      Value<String>? feedImage,
      Value<int>? feedId,
      Value<bool>? isPlayed}) {
    return EpisodesCompanion(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      title: title ?? this.title,
      link: link ?? this.link,
      description: description ?? this.description,
      datePublished: datePublished ?? this.datePublished,
      enclosureUrl: enclosureUrl ?? this.enclosureUrl,
      enclosureType: enclosureType ?? this.enclosureType,
      enclosureLength: enclosureLength ?? this.enclosureLength,
      duration: duration ?? this.duration,
      explicit: explicit ?? this.explicit,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      episodeType: episodeType ?? this.episodeType,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      image: image ?? this.image,
      feedImage: feedImage ?? this.feedImage,
      feedId: feedId ?? this.feedId,
      isPlayed: isPlayed ?? this.isPlayed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (guid.present) {
      map['guid'] = Variable<String>(guid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (datePublished.present) {
      map['date_published'] = Variable<int>(datePublished.value);
    }
    if (enclosureUrl.present) {
      map['enclosure_url'] = Variable<String>(enclosureUrl.value);
    }
    if (enclosureType.present) {
      map['enclosure_type'] = Variable<String>(enclosureType.value);
    }
    if (enclosureLength.present) {
      map['enclosure_length'] = Variable<int>(enclosureLength.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    if (explicit.present) {
      map['explicit'] = Variable<bool>(explicit.value);
    }
    if (episodeNumber.present) {
      map['episode_number'] = Variable<int>(episodeNumber.value);
    }
    if (episodeType.present) {
      map['episode_type'] = Variable<String>(episodeType.value);
    }
    if (seasonNumber.present) {
      map['season_number'] = Variable<int>(seasonNumber.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (feedImage.present) {
      map['feed_image'] = Variable<String>(feedImage.value);
    }
    if (feedId.present) {
      map['feed_id'] = Variable<int>(feedId.value);
    }
    if (isPlayed.present) {
      map['is_played'] = Variable<bool>(isPlayed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EpisodesCompanion(')
          ..write('id: $id, ')
          ..write('guid: $guid, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('datePublished: $datePublished, ')
          ..write('enclosureUrl: $enclosureUrl, ')
          ..write('enclosureType: $enclosureType, ')
          ..write('enclosureLength: $enclosureLength, ')
          ..write('duration: $duration, ')
          ..write('explicit: $explicit, ')
          ..write('episodeNumber: $episodeNumber, ')
          ..write('episodeType: $episodeType, ')
          ..write('seasonNumber: $seasonNumber, ')
          ..write('image: $image, ')
          ..write('feedImage: $feedImage, ')
          ..write('feedId: $feedId, ')
          ..write('isPlayed: $isPlayed')
          ..write(')'))
        .toString();
  }
}

class $ShowsTable extends Shows with TableInfo<$ShowsTable, Show> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShowsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoriesMeta =
      const VerificationMeta('categories');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
      categories = GeneratedColumn<String>('categories', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Map<String, dynamic>>(
              $ShowsTable.$convertercategories);
  static const VerificationMeta _paletteColorMeta =
      const VerificationMeta('paletteColor');
  @override
  late final GeneratedColumn<int> paletteColor = GeneratedColumn<int>(
      'palette_color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isFollowedMeta =
      const VerificationMeta('isFollowed');
  @override
  late final GeneratedColumn<bool> isFollowed = GeneratedColumn<bool>(
      'is_followed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_followed" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        link,
        description,
        author,
        image,
        categories,
        paletteColor,
        isFollowed
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shows';
  @override
  VerificationContext validateIntegrity(Insertable<Show> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    } else if (isInserting) {
      context.missing(_linkMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    context.handle(_categoriesMeta, const VerificationResult.success());
    if (data.containsKey('palette_color')) {
      context.handle(
          _paletteColorMeta,
          paletteColor.isAcceptableOrUnknown(
              data['palette_color']!, _paletteColorMeta));
    } else if (isInserting) {
      context.missing(_paletteColorMeta);
    }
    if (data.containsKey('is_followed')) {
      context.handle(
          _isFollowedMeta,
          isFollowed.isAcceptableOrUnknown(
              data['is_followed']!, _isFollowedMeta));
    } else if (isInserting) {
      context.missing(_isFollowedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Show map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Show(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      categories: $ShowsTable.$convertercategories.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}categories'])!),
      paletteColor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}palette_color'])!,
      isFollowed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_followed'])!,
    );
  }

  @override
  $ShowsTable createAlias(String alias) {
    return $ShowsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>, String> $convertercategories =
      const JsonConverter();
}

class Show extends DataClass implements Insertable<Show> {
  final int id;
  final String title;
  final String link;
  final String description;
  final String author;
  final String image;
  final Map<String, dynamic> categories;
  final int paletteColor;
  final bool isFollowed;
  const Show(
      {required this.id,
      required this.title,
      required this.link,
      required this.description,
      required this.author,
      required this.image,
      required this.categories,
      required this.paletteColor,
      required this.isFollowed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['link'] = Variable<String>(link);
    map['description'] = Variable<String>(description);
    map['author'] = Variable<String>(author);
    map['image'] = Variable<String>(image);
    {
      map['categories'] =
          Variable<String>($ShowsTable.$convertercategories.toSql(categories));
    }
    map['palette_color'] = Variable<int>(paletteColor);
    map['is_followed'] = Variable<bool>(isFollowed);
    return map;
  }

  ShowsCompanion toCompanion(bool nullToAbsent) {
    return ShowsCompanion(
      id: Value(id),
      title: Value(title),
      link: Value(link),
      description: Value(description),
      author: Value(author),
      image: Value(image),
      categories: Value(categories),
      paletteColor: Value(paletteColor),
      isFollowed: Value(isFollowed),
    );
  }

  factory Show.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Show(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      link: serializer.fromJson<String>(json['link']),
      description: serializer.fromJson<String>(json['description']),
      author: serializer.fromJson<String>(json['author']),
      image: serializer.fromJson<String>(json['image']),
      categories: serializer.fromJson<Map<String, dynamic>>(json['categories']),
      paletteColor: serializer.fromJson<int>(json['paletteColor']),
      isFollowed: serializer.fromJson<bool>(json['isFollowed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'link': serializer.toJson<String>(link),
      'description': serializer.toJson<String>(description),
      'author': serializer.toJson<String>(author),
      'image': serializer.toJson<String>(image),
      'categories': serializer.toJson<Map<String, dynamic>>(categories),
      'paletteColor': serializer.toJson<int>(paletteColor),
      'isFollowed': serializer.toJson<bool>(isFollowed),
    };
  }

  Show copyWith(
          {int? id,
          String? title,
          String? link,
          String? description,
          String? author,
          String? image,
          Map<String, dynamic>? categories,
          int? paletteColor,
          bool? isFollowed}) =>
      Show(
        id: id ?? this.id,
        title: title ?? this.title,
        link: link ?? this.link,
        description: description ?? this.description,
        author: author ?? this.author,
        image: image ?? this.image,
        categories: categories ?? this.categories,
        paletteColor: paletteColor ?? this.paletteColor,
        isFollowed: isFollowed ?? this.isFollowed,
      );
  Show copyWithCompanion(ShowsCompanion data) {
    return Show(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      link: data.link.present ? data.link.value : this.link,
      description:
          data.description.present ? data.description.value : this.description,
      author: data.author.present ? data.author.value : this.author,
      image: data.image.present ? data.image.value : this.image,
      categories:
          data.categories.present ? data.categories.value : this.categories,
      paletteColor: data.paletteColor.present
          ? data.paletteColor.value
          : this.paletteColor,
      isFollowed:
          data.isFollowed.present ? data.isFollowed.value : this.isFollowed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Show(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, link, description, author, image,
      categories, paletteColor, isFollowed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Show &&
          other.id == this.id &&
          other.title == this.title &&
          other.link == this.link &&
          other.description == this.description &&
          other.author == this.author &&
          other.image == this.image &&
          other.categories == this.categories &&
          other.paletteColor == this.paletteColor &&
          other.isFollowed == this.isFollowed);
}

class ShowsCompanion extends UpdateCompanion<Show> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> link;
  final Value<String> description;
  final Value<String> author;
  final Value<String> image;
  final Value<Map<String, dynamic>> categories;
  final Value<int> paletteColor;
  final Value<bool> isFollowed;
  const ShowsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.link = const Value.absent(),
    this.description = const Value.absent(),
    this.author = const Value.absent(),
    this.image = const Value.absent(),
    this.categories = const Value.absent(),
    this.paletteColor = const Value.absent(),
    this.isFollowed = const Value.absent(),
  });
  ShowsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String link,
    required String description,
    required String author,
    required String image,
    required Map<String, dynamic> categories,
    required int paletteColor,
    required bool isFollowed,
  })  : title = Value(title),
        link = Value(link),
        description = Value(description),
        author = Value(author),
        image = Value(image),
        categories = Value(categories),
        paletteColor = Value(paletteColor),
        isFollowed = Value(isFollowed);
  static Insertable<Show> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? link,
    Expression<String>? description,
    Expression<String>? author,
    Expression<String>? image,
    Expression<String>? categories,
    Expression<int>? paletteColor,
    Expression<bool>? isFollowed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (link != null) 'link': link,
      if (description != null) 'description': description,
      if (author != null) 'author': author,
      if (image != null) 'image': image,
      if (categories != null) 'categories': categories,
      if (paletteColor != null) 'palette_color': paletteColor,
      if (isFollowed != null) 'is_followed': isFollowed,
    });
  }

  ShowsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? link,
      Value<String>? description,
      Value<String>? author,
      Value<String>? image,
      Value<Map<String, dynamic>>? categories,
      Value<int>? paletteColor,
      Value<bool>? isFollowed}) {
    return ShowsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      link: link ?? this.link,
      description: description ?? this.description,
      author: author ?? this.author,
      image: image ?? this.image,
      categories: categories ?? this.categories,
      paletteColor: paletteColor ?? this.paletteColor,
      isFollowed: isFollowed ?? this.isFollowed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(
          $ShowsTable.$convertercategories.toSql(categories.value));
    }
    if (paletteColor.present) {
      map['palette_color'] = Variable<int>(paletteColor.value);
    }
    if (isFollowed.present) {
      map['is_followed'] = Variable<bool>(isFollowed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShowsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('image: $image, ')
          ..write('categories: $categories, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed')
          ..write(')'))
        .toString();
  }
}

class $ShowSettingsTable extends ShowSettings
    with TableInfo<$ShowSettingsTable, ShowSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShowSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _showIdMeta = const VerificationMeta('showId');
  @override
  late final GeneratedColumn<int> showId = GeneratedColumn<int>(
      'show_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES shows (id)'));
  static const VerificationMeta _paletteColorMeta =
      const VerificationMeta('paletteColor');
  @override
  late final GeneratedColumn<int> paletteColor = GeneratedColumn<int>(
      'palette_color', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isFollowedMeta =
      const VerificationMeta('isFollowed');
  @override
  late final GeneratedColumn<bool> isFollowed = GeneratedColumn<bool>(
      'is_followed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_followed" IN (0, 1))'));
  static const VerificationMeta _filterEpisodesByMeta =
      const VerificationMeta('filterEpisodesBy');
  @override
  late final GeneratedColumn<int> filterEpisodesBy = GeneratedColumn<int>(
      'filter_episodes_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sortEpisodesByMeta =
      const VerificationMeta('sortEpisodesBy');
  @override
  late final GeneratedColumn<int> sortEpisodesBy = GeneratedColumn<int>(
      'sort_episodes_by', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [showId, paletteColor, isFollowed, filterEpisodesBy, sortEpisodesBy];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'show_settings';
  @override
  VerificationContext validateIntegrity(Insertable<ShowSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('show_id')) {
      context.handle(_showIdMeta,
          showId.isAcceptableOrUnknown(data['show_id']!, _showIdMeta));
    }
    if (data.containsKey('palette_color')) {
      context.handle(
          _paletteColorMeta,
          paletteColor.isAcceptableOrUnknown(
              data['palette_color']!, _paletteColorMeta));
    } else if (isInserting) {
      context.missing(_paletteColorMeta);
    }
    if (data.containsKey('is_followed')) {
      context.handle(
          _isFollowedMeta,
          isFollowed.isAcceptableOrUnknown(
              data['is_followed']!, _isFollowedMeta));
    } else if (isInserting) {
      context.missing(_isFollowedMeta);
    }
    if (data.containsKey('filter_episodes_by')) {
      context.handle(
          _filterEpisodesByMeta,
          filterEpisodesBy.isAcceptableOrUnknown(
              data['filter_episodes_by']!, _filterEpisodesByMeta));
    } else if (isInserting) {
      context.missing(_filterEpisodesByMeta);
    }
    if (data.containsKey('sort_episodes_by')) {
      context.handle(
          _sortEpisodesByMeta,
          sortEpisodesBy.isAcceptableOrUnknown(
              data['sort_episodes_by']!, _sortEpisodesByMeta));
    } else if (isInserting) {
      context.missing(_sortEpisodesByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {showId};
  @override
  ShowSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShowSetting(
      showId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}show_id'])!,
      paletteColor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}palette_color'])!,
      isFollowed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_followed'])!,
      filterEpisodesBy: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}filter_episodes_by'])!,
      sortEpisodesBy: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_episodes_by'])!,
    );
  }

  @override
  $ShowSettingsTable createAlias(String alias) {
    return $ShowSettingsTable(attachedDatabase, alias);
  }
}

class ShowSetting extends DataClass implements Insertable<ShowSetting> {
  final int showId;
  final int paletteColor;
  final bool isFollowed;
  final int filterEpisodesBy;
  final int sortEpisodesBy;
  const ShowSetting(
      {required this.showId,
      required this.paletteColor,
      required this.isFollowed,
      required this.filterEpisodesBy,
      required this.sortEpisodesBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['show_id'] = Variable<int>(showId);
    map['palette_color'] = Variable<int>(paletteColor);
    map['is_followed'] = Variable<bool>(isFollowed);
    map['filter_episodes_by'] = Variable<int>(filterEpisodesBy);
    map['sort_episodes_by'] = Variable<int>(sortEpisodesBy);
    return map;
  }

  ShowSettingsCompanion toCompanion(bool nullToAbsent) {
    return ShowSettingsCompanion(
      showId: Value(showId),
      paletteColor: Value(paletteColor),
      isFollowed: Value(isFollowed),
      filterEpisodesBy: Value(filterEpisodesBy),
      sortEpisodesBy: Value(sortEpisodesBy),
    );
  }

  factory ShowSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShowSetting(
      showId: serializer.fromJson<int>(json['showId']),
      paletteColor: serializer.fromJson<int>(json['paletteColor']),
      isFollowed: serializer.fromJson<bool>(json['isFollowed']),
      filterEpisodesBy: serializer.fromJson<int>(json['filterEpisodesBy']),
      sortEpisodesBy: serializer.fromJson<int>(json['sortEpisodesBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'showId': serializer.toJson<int>(showId),
      'paletteColor': serializer.toJson<int>(paletteColor),
      'isFollowed': serializer.toJson<bool>(isFollowed),
      'filterEpisodesBy': serializer.toJson<int>(filterEpisodesBy),
      'sortEpisodesBy': serializer.toJson<int>(sortEpisodesBy),
    };
  }

  ShowSetting copyWith(
          {int? showId,
          int? paletteColor,
          bool? isFollowed,
          int? filterEpisodesBy,
          int? sortEpisodesBy}) =>
      ShowSetting(
        showId: showId ?? this.showId,
        paletteColor: paletteColor ?? this.paletteColor,
        isFollowed: isFollowed ?? this.isFollowed,
        filterEpisodesBy: filterEpisodesBy ?? this.filterEpisodesBy,
        sortEpisodesBy: sortEpisodesBy ?? this.sortEpisodesBy,
      );
  ShowSetting copyWithCompanion(ShowSettingsCompanion data) {
    return ShowSetting(
      showId: data.showId.present ? data.showId.value : this.showId,
      paletteColor: data.paletteColor.present
          ? data.paletteColor.value
          : this.paletteColor,
      isFollowed:
          data.isFollowed.present ? data.isFollowed.value : this.isFollowed,
      filterEpisodesBy: data.filterEpisodesBy.present
          ? data.filterEpisodesBy.value
          : this.filterEpisodesBy,
      sortEpisodesBy: data.sortEpisodesBy.present
          ? data.sortEpisodesBy.value
          : this.sortEpisodesBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShowSetting(')
          ..write('showId: $showId, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed, ')
          ..write('filterEpisodesBy: $filterEpisodesBy, ')
          ..write('sortEpisodesBy: $sortEpisodesBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      showId, paletteColor, isFollowed, filterEpisodesBy, sortEpisodesBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShowSetting &&
          other.showId == this.showId &&
          other.paletteColor == this.paletteColor &&
          other.isFollowed == this.isFollowed &&
          other.filterEpisodesBy == this.filterEpisodesBy &&
          other.sortEpisodesBy == this.sortEpisodesBy);
}

class ShowSettingsCompanion extends UpdateCompanion<ShowSetting> {
  final Value<int> showId;
  final Value<int> paletteColor;
  final Value<bool> isFollowed;
  final Value<int> filterEpisodesBy;
  final Value<int> sortEpisodesBy;
  const ShowSettingsCompanion({
    this.showId = const Value.absent(),
    this.paletteColor = const Value.absent(),
    this.isFollowed = const Value.absent(),
    this.filterEpisodesBy = const Value.absent(),
    this.sortEpisodesBy = const Value.absent(),
  });
  ShowSettingsCompanion.insert({
    this.showId = const Value.absent(),
    required int paletteColor,
    required bool isFollowed,
    required int filterEpisodesBy,
    required int sortEpisodesBy,
  })  : paletteColor = Value(paletteColor),
        isFollowed = Value(isFollowed),
        filterEpisodesBy = Value(filterEpisodesBy),
        sortEpisodesBy = Value(sortEpisodesBy);
  static Insertable<ShowSetting> custom({
    Expression<int>? showId,
    Expression<int>? paletteColor,
    Expression<bool>? isFollowed,
    Expression<int>? filterEpisodesBy,
    Expression<int>? sortEpisodesBy,
  }) {
    return RawValuesInsertable({
      if (showId != null) 'show_id': showId,
      if (paletteColor != null) 'palette_color': paletteColor,
      if (isFollowed != null) 'is_followed': isFollowed,
      if (filterEpisodesBy != null) 'filter_episodes_by': filterEpisodesBy,
      if (sortEpisodesBy != null) 'sort_episodes_by': sortEpisodesBy,
    });
  }

  ShowSettingsCompanion copyWith(
      {Value<int>? showId,
      Value<int>? paletteColor,
      Value<bool>? isFollowed,
      Value<int>? filterEpisodesBy,
      Value<int>? sortEpisodesBy}) {
    return ShowSettingsCompanion(
      showId: showId ?? this.showId,
      paletteColor: paletteColor ?? this.paletteColor,
      isFollowed: isFollowed ?? this.isFollowed,
      filterEpisodesBy: filterEpisodesBy ?? this.filterEpisodesBy,
      sortEpisodesBy: sortEpisodesBy ?? this.sortEpisodesBy,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (showId.present) {
      map['show_id'] = Variable<int>(showId.value);
    }
    if (paletteColor.present) {
      map['palette_color'] = Variable<int>(paletteColor.value);
    }
    if (isFollowed.present) {
      map['is_followed'] = Variable<bool>(isFollowed.value);
    }
    if (filterEpisodesBy.present) {
      map['filter_episodes_by'] = Variable<int>(filterEpisodesBy.value);
    }
    if (sortEpisodesBy.present) {
      map['sort_episodes_by'] = Variable<int>(sortEpisodesBy.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShowSettingsCompanion(')
          ..write('showId: $showId, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed, ')
          ..write('filterEpisodesBy: $filterEpisodesBy, ')
          ..write('sortEpisodesBy: $sortEpisodesBy')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EpisodesTable episodes = $EpisodesTable(this);
  late final $ShowsTable shows = $ShowsTable(this);
  late final $ShowSettingsTable showSettings = $ShowSettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [episodes, shows, showSettings];
}

typedef $$EpisodesTableCreateCompanionBuilder = EpisodesCompanion Function({
  Value<int> id,
  required String guid,
  required String title,
  required String link,
  required String description,
  required int datePublished,
  required String enclosureUrl,
  required String enclosureType,
  required int enclosureLength,
  required int duration,
  required bool explicit,
  required int episodeNumber,
  required String episodeType,
  required int seasonNumber,
  required String image,
  required String feedImage,
  required int feedId,
  required bool isPlayed,
});
typedef $$EpisodesTableUpdateCompanionBuilder = EpisodesCompanion Function({
  Value<int> id,
  Value<String> guid,
  Value<String> title,
  Value<String> link,
  Value<String> description,
  Value<int> datePublished,
  Value<String> enclosureUrl,
  Value<String> enclosureType,
  Value<int> enclosureLength,
  Value<int> duration,
  Value<bool> explicit,
  Value<int> episodeNumber,
  Value<String> episodeType,
  Value<int> seasonNumber,
  Value<String> image,
  Value<String> feedImage,
  Value<int> feedId,
  Value<bool> isPlayed,
});

class $$EpisodesTableFilterComposer
    extends Composer<_$AppDatabase, $EpisodesTable> {
  $$EpisodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get guid => $composableBuilder(
      column: $table.guid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get datePublished => $composableBuilder(
      column: $table.datePublished, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enclosureUrl => $composableBuilder(
      column: $table.enclosureUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get enclosureType => $composableBuilder(
      column: $table.enclosureType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get enclosureLength => $composableBuilder(
      column: $table.enclosureLength,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get duration => $composableBuilder(
      column: $table.duration, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get explicit => $composableBuilder(
      column: $table.explicit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get episodeType => $composableBuilder(
      column: $table.episodeType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedImage => $composableBuilder(
      column: $table.feedImage, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get feedId => $composableBuilder(
      column: $table.feedId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnFilters(column));
}

class $$EpisodesTableOrderingComposer
    extends Composer<_$AppDatabase, $EpisodesTable> {
  $$EpisodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get guid => $composableBuilder(
      column: $table.guid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get datePublished => $composableBuilder(
      column: $table.datePublished,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enclosureUrl => $composableBuilder(
      column: $table.enclosureUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get enclosureType => $composableBuilder(
      column: $table.enclosureType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get enclosureLength => $composableBuilder(
      column: $table.enclosureLength,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get duration => $composableBuilder(
      column: $table.duration, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get explicit => $composableBuilder(
      column: $table.explicit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get episodeType => $composableBuilder(
      column: $table.episodeType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedImage => $composableBuilder(
      column: $table.feedImage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get feedId => $composableBuilder(
      column: $table.feedId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnOrderings(column));
}

class $$EpisodesTableAnnotationComposer
    extends Composer<_$AppDatabase, $EpisodesTable> {
  $$EpisodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get guid =>
      $composableBuilder(column: $table.guid, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get datePublished => $composableBuilder(
      column: $table.datePublished, builder: (column) => column);

  GeneratedColumn<String> get enclosureUrl => $composableBuilder(
      column: $table.enclosureUrl, builder: (column) => column);

  GeneratedColumn<String> get enclosureType => $composableBuilder(
      column: $table.enclosureType, builder: (column) => column);

  GeneratedColumn<int> get enclosureLength => $composableBuilder(
      column: $table.enclosureLength, builder: (column) => column);

  GeneratedColumn<int> get duration =>
      $composableBuilder(column: $table.duration, builder: (column) => column);

  GeneratedColumn<bool> get explicit =>
      $composableBuilder(column: $table.explicit, builder: (column) => column);

  GeneratedColumn<int> get episodeNumber => $composableBuilder(
      column: $table.episodeNumber, builder: (column) => column);

  GeneratedColumn<String> get episodeType => $composableBuilder(
      column: $table.episodeType, builder: (column) => column);

  GeneratedColumn<int> get seasonNumber => $composableBuilder(
      column: $table.seasonNumber, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get feedImage =>
      $composableBuilder(column: $table.feedImage, builder: (column) => column);

  GeneratedColumn<int> get feedId =>
      $composableBuilder(column: $table.feedId, builder: (column) => column);

  GeneratedColumn<bool> get isPlayed =>
      $composableBuilder(column: $table.isPlayed, builder: (column) => column);
}

class $$EpisodesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EpisodesTable,
    Episode,
    $$EpisodesTableFilterComposer,
    $$EpisodesTableOrderingComposer,
    $$EpisodesTableAnnotationComposer,
    $$EpisodesTableCreateCompanionBuilder,
    $$EpisodesTableUpdateCompanionBuilder,
    (Episode, BaseReferences<_$AppDatabase, $EpisodesTable, Episode>),
    Episode,
    PrefetchHooks Function()> {
  $$EpisodesTableTableManager(_$AppDatabase db, $EpisodesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EpisodesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EpisodesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EpisodesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> guid = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> link = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<int> datePublished = const Value.absent(),
            Value<String> enclosureUrl = const Value.absent(),
            Value<String> enclosureType = const Value.absent(),
            Value<int> enclosureLength = const Value.absent(),
            Value<int> duration = const Value.absent(),
            Value<bool> explicit = const Value.absent(),
            Value<int> episodeNumber = const Value.absent(),
            Value<String> episodeType = const Value.absent(),
            Value<int> seasonNumber = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> feedImage = const Value.absent(),
            Value<int> feedId = const Value.absent(),
            Value<bool> isPlayed = const Value.absent(),
          }) =>
              EpisodesCompanion(
            id: id,
            guid: guid,
            title: title,
            link: link,
            description: description,
            datePublished: datePublished,
            enclosureUrl: enclosureUrl,
            enclosureType: enclosureType,
            enclosureLength: enclosureLength,
            duration: duration,
            explicit: explicit,
            episodeNumber: episodeNumber,
            episodeType: episodeType,
            seasonNumber: seasonNumber,
            image: image,
            feedImage: feedImage,
            feedId: feedId,
            isPlayed: isPlayed,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String guid,
            required String title,
            required String link,
            required String description,
            required int datePublished,
            required String enclosureUrl,
            required String enclosureType,
            required int enclosureLength,
            required int duration,
            required bool explicit,
            required int episodeNumber,
            required String episodeType,
            required int seasonNumber,
            required String image,
            required String feedImage,
            required int feedId,
            required bool isPlayed,
          }) =>
              EpisodesCompanion.insert(
            id: id,
            guid: guid,
            title: title,
            link: link,
            description: description,
            datePublished: datePublished,
            enclosureUrl: enclosureUrl,
            enclosureType: enclosureType,
            enclosureLength: enclosureLength,
            duration: duration,
            explicit: explicit,
            episodeNumber: episodeNumber,
            episodeType: episodeType,
            seasonNumber: seasonNumber,
            image: image,
            feedImage: feedImage,
            feedId: feedId,
            isPlayed: isPlayed,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EpisodesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EpisodesTable,
    Episode,
    $$EpisodesTableFilterComposer,
    $$EpisodesTableOrderingComposer,
    $$EpisodesTableAnnotationComposer,
    $$EpisodesTableCreateCompanionBuilder,
    $$EpisodesTableUpdateCompanionBuilder,
    (Episode, BaseReferences<_$AppDatabase, $EpisodesTable, Episode>),
    Episode,
    PrefetchHooks Function()>;
typedef $$ShowsTableCreateCompanionBuilder = ShowsCompanion Function({
  Value<int> id,
  required String title,
  required String link,
  required String description,
  required String author,
  required String image,
  required Map<String, dynamic> categories,
  required int paletteColor,
  required bool isFollowed,
});
typedef $$ShowsTableUpdateCompanionBuilder = ShowsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> link,
  Value<String> description,
  Value<String> author,
  Value<String> image,
  Value<Map<String, dynamic>> categories,
  Value<int> paletteColor,
  Value<bool> isFollowed,
});

final class $$ShowsTableReferences
    extends BaseReferences<_$AppDatabase, $ShowsTable, Show> {
  $$ShowsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ShowSettingsTable, List<ShowSetting>>
      _showSettingsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.showSettings,
          aliasName: $_aliasNameGenerator(db.shows.id, db.showSettings.showId));

  $$ShowSettingsTableProcessedTableManager get showSettingsRefs {
    final manager = $$ShowSettingsTableTableManager($_db, $_db.showSettings)
        .filter((f) => f.showId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_showSettingsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ShowsTableFilterComposer extends Composer<_$AppDatabase, $ShowsTable> {
  $$ShowsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>, Map<String, dynamic>,
          String>
      get categories => $composableBuilder(
          column: $table.categories,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => ColumnFilters(column));

  Expression<bool> showSettingsRefs(
      Expression<bool> Function($$ShowSettingsTableFilterComposer f) f) {
    final $$ShowSettingsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.showSettings,
        getReferencedColumn: (t) => t.showId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ShowSettingsTableFilterComposer(
              $db: $db,
              $table: $db.showSettings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ShowsTableOrderingComposer
    extends Composer<_$AppDatabase, $ShowsTable> {
  $$ShowsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => ColumnOrderings(column));
}

class $$ShowsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShowsTable> {
  $$ShowsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
      get categories => $composableBuilder(
          column: $table.categories, builder: (column) => column);

  GeneratedColumn<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => column);

  GeneratedColumn<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => column);

  Expression<T> showSettingsRefs<T extends Object>(
      Expression<T> Function($$ShowSettingsTableAnnotationComposer a) f) {
    final $$ShowSettingsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.showSettings,
        getReferencedColumn: (t) => t.showId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ShowSettingsTableAnnotationComposer(
              $db: $db,
              $table: $db.showSettings,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ShowsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ShowsTable,
    Show,
    $$ShowsTableFilterComposer,
    $$ShowsTableOrderingComposer,
    $$ShowsTableAnnotationComposer,
    $$ShowsTableCreateCompanionBuilder,
    $$ShowsTableUpdateCompanionBuilder,
    (Show, $$ShowsTableReferences),
    Show,
    PrefetchHooks Function({bool showSettingsRefs})> {
  $$ShowsTableTableManager(_$AppDatabase db, $ShowsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShowsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShowsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShowsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> link = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> author = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<Map<String, dynamic>> categories = const Value.absent(),
            Value<int> paletteColor = const Value.absent(),
            Value<bool> isFollowed = const Value.absent(),
          }) =>
              ShowsCompanion(
            id: id,
            title: title,
            link: link,
            description: description,
            author: author,
            image: image,
            categories: categories,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String link,
            required String description,
            required String author,
            required String image,
            required Map<String, dynamic> categories,
            required int paletteColor,
            required bool isFollowed,
          }) =>
              ShowsCompanion.insert(
            id: id,
            title: title,
            link: link,
            description: description,
            author: author,
            image: image,
            categories: categories,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ShowsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({showSettingsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (showSettingsRefs) db.showSettings],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (showSettingsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ShowsTableReferences._showSettingsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ShowsTableReferences(db, table, p0)
                                .showSettingsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.showId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ShowsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ShowsTable,
    Show,
    $$ShowsTableFilterComposer,
    $$ShowsTableOrderingComposer,
    $$ShowsTableAnnotationComposer,
    $$ShowsTableCreateCompanionBuilder,
    $$ShowsTableUpdateCompanionBuilder,
    (Show, $$ShowsTableReferences),
    Show,
    PrefetchHooks Function({bool showSettingsRefs})>;
typedef $$ShowSettingsTableCreateCompanionBuilder = ShowSettingsCompanion
    Function({
  Value<int> showId,
  required int paletteColor,
  required bool isFollowed,
  required int filterEpisodesBy,
  required int sortEpisodesBy,
});
typedef $$ShowSettingsTableUpdateCompanionBuilder = ShowSettingsCompanion
    Function({
  Value<int> showId,
  Value<int> paletteColor,
  Value<bool> isFollowed,
  Value<int> filterEpisodesBy,
  Value<int> sortEpisodesBy,
});

final class $$ShowSettingsTableReferences
    extends BaseReferences<_$AppDatabase, $ShowSettingsTable, ShowSetting> {
  $$ShowSettingsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ShowsTable _showIdTable(_$AppDatabase db) => db.shows
      .createAlias($_aliasNameGenerator(db.showSettings.showId, db.shows.id));

  $$ShowsTableProcessedTableManager? get showId {
    if ($_item.showId == null) return null;
    final manager = $$ShowsTableTableManager($_db, $_db.shows)
        .filter((f) => f.id($_item.showId!));
    final item = $_typedResult.readTableOrNull(_showIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ShowSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $ShowSettingsTable> {
  $$ShowSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get filterEpisodesBy => $composableBuilder(
      column: $table.filterEpisodesBy,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sortEpisodesBy => $composableBuilder(
      column: $table.sortEpisodesBy,
      builder: (column) => ColumnFilters(column));

  $$ShowsTableFilterComposer get showId {
    final $$ShowsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.showId,
        referencedTable: $db.shows,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ShowsTableFilterComposer(
              $db: $db,
              $table: $db.shows,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ShowSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $ShowSettingsTable> {
  $$ShowSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get filterEpisodesBy => $composableBuilder(
      column: $table.filterEpisodesBy,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sortEpisodesBy => $composableBuilder(
      column: $table.sortEpisodesBy,
      builder: (column) => ColumnOrderings(column));

  $$ShowsTableOrderingComposer get showId {
    final $$ShowsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.showId,
        referencedTable: $db.shows,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ShowsTableOrderingComposer(
              $db: $db,
              $table: $db.shows,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ShowSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShowSettingsTable> {
  $$ShowSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => column);

  GeneratedColumn<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => column);

  GeneratedColumn<int> get filterEpisodesBy => $composableBuilder(
      column: $table.filterEpisodesBy, builder: (column) => column);

  GeneratedColumn<int> get sortEpisodesBy => $composableBuilder(
      column: $table.sortEpisodesBy, builder: (column) => column);

  $$ShowsTableAnnotationComposer get showId {
    final $$ShowsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.showId,
        referencedTable: $db.shows,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ShowsTableAnnotationComposer(
              $db: $db,
              $table: $db.shows,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ShowSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ShowSettingsTable,
    ShowSetting,
    $$ShowSettingsTableFilterComposer,
    $$ShowSettingsTableOrderingComposer,
    $$ShowSettingsTableAnnotationComposer,
    $$ShowSettingsTableCreateCompanionBuilder,
    $$ShowSettingsTableUpdateCompanionBuilder,
    (ShowSetting, $$ShowSettingsTableReferences),
    ShowSetting,
    PrefetchHooks Function({bool showId})> {
  $$ShowSettingsTableTableManager(_$AppDatabase db, $ShowSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShowSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShowSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShowSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> showId = const Value.absent(),
            Value<int> paletteColor = const Value.absent(),
            Value<bool> isFollowed = const Value.absent(),
            Value<int> filterEpisodesBy = const Value.absent(),
            Value<int> sortEpisodesBy = const Value.absent(),
          }) =>
              ShowSettingsCompanion(
            showId: showId,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
            filterEpisodesBy: filterEpisodesBy,
            sortEpisodesBy: sortEpisodesBy,
          ),
          createCompanionCallback: ({
            Value<int> showId = const Value.absent(),
            required int paletteColor,
            required bool isFollowed,
            required int filterEpisodesBy,
            required int sortEpisodesBy,
          }) =>
              ShowSettingsCompanion.insert(
            showId: showId,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
            filterEpisodesBy: filterEpisodesBy,
            sortEpisodesBy: sortEpisodesBy,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ShowSettingsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({showId = false}) {
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
                if (showId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.showId,
                    referencedTable:
                        $$ShowSettingsTableReferences._showIdTable(db),
                    referencedColumn:
                        $$ShowSettingsTableReferences._showIdTable(db).id,
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

typedef $$ShowSettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ShowSettingsTable,
    ShowSetting,
    $$ShowSettingsTableFilterComposer,
    $$ShowSettingsTableOrderingComposer,
    $$ShowSettingsTableAnnotationComposer,
    $$ShowSettingsTableCreateCompanionBuilder,
    $$ShowSettingsTableUpdateCompanionBuilder,
    (ShowSetting, $$ShowSettingsTableReferences),
    ShowSetting,
    PrefetchHooks Function({bool showId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EpisodesTableTableManager get episodes =>
      $$EpisodesTableTableManager(_db, _db.episodes);
  $$ShowsTableTableManager get shows =>
      $$ShowsTableTableManager(_db, _db.shows);
  $$ShowSettingsTableTableManager get showSettings =>
      $$ShowSettingsTableTableManager(_db, _db.showSettings);
}
