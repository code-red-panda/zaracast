// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
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
  static const VerificationMeta _podcastGuidMeta =
      const VerificationMeta('podcastGuid');
  @override
  late final GeneratedColumn<String> podcastGuid = GeneratedColumn<String>(
      'podcast_guid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
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
  static const VerificationMeta _ownerNameMeta =
      const VerificationMeta('ownerName');
  @override
  late final GeneratedColumn<String> ownerName = GeneratedColumn<String>(
      'owner_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _artworkMeta =
      const VerificationMeta('artwork');
  @override
  late final GeneratedColumn<String> artwork = GeneratedColumn<String>(
      'artwork', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdateTimeMeta =
      const VerificationMeta('lastUpdateTime');
  @override
  late final GeneratedColumn<int> lastUpdateTime = GeneratedColumn<int>(
      'last_update_time', aliasedName, false,
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
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mediumMeta = const VerificationMeta('medium');
  @override
  late final GeneratedColumn<String> medium = GeneratedColumn<String>(
      'medium', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _episodeCountMeta =
      const VerificationMeta('episodeCount');
  @override
  late final GeneratedColumn<int> episodeCount = GeneratedColumn<int>(
      'episode_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _crawlErrorsMeta =
      const VerificationMeta('crawlErrors');
  @override
  late final GeneratedColumn<int> crawlErrors = GeneratedColumn<int>(
      'crawl_errors', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoriesMeta =
      const VerificationMeta('categories');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
      categories = GeneratedColumn<String>('categories', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Map<String, dynamic>>(
              $ShowsTable.$convertercategories);
  static const VerificationMeta _deadMeta = const VerificationMeta('dead');
  @override
  late final GeneratedColumn<int> dead = GeneratedColumn<int>(
      'dead', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentTypeMeta =
      const VerificationMeta('contentType');
  @override
  late final GeneratedColumn<String> contentType = GeneratedColumn<String>(
      'content_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _generatorMeta =
      const VerificationMeta('generator');
  @override
  late final GeneratedColumn<String> generator = GeneratedColumn<String>(
      'generator', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paletteColorMeta =
      const VerificationMeta('paletteColor');
  @override
  late final GeneratedColumn<int> paletteColor = GeneratedColumn<int>(
      'palette_color', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
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
        podcastGuid,
        title,
        url,
        link,
        description,
        author,
        ownerName,
        image,
        artwork,
        lastUpdateTime,
        explicit,
        type,
        medium,
        language,
        episodeCount,
        crawlErrors,
        categories,
        dead,
        contentType,
        generator,
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
    if (data.containsKey('podcast_guid')) {
      context.handle(
          _podcastGuidMeta,
          podcastGuid.isAcceptableOrUnknown(
              data['podcast_guid']!, _podcastGuidMeta));
    } else if (isInserting) {
      context.missing(_podcastGuidMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
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
    if (data.containsKey('owner_name')) {
      context.handle(_ownerNameMeta,
          ownerName.isAcceptableOrUnknown(data['owner_name']!, _ownerNameMeta));
    } else if (isInserting) {
      context.missing(_ownerNameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('artwork')) {
      context.handle(_artworkMeta,
          artwork.isAcceptableOrUnknown(data['artwork']!, _artworkMeta));
    } else if (isInserting) {
      context.missing(_artworkMeta);
    }
    if (data.containsKey('last_update_time')) {
      context.handle(
          _lastUpdateTimeMeta,
          lastUpdateTime.isAcceptableOrUnknown(
              data['last_update_time']!, _lastUpdateTimeMeta));
    } else if (isInserting) {
      context.missing(_lastUpdateTimeMeta);
    }
    if (data.containsKey('explicit')) {
      context.handle(_explicitMeta,
          explicit.isAcceptableOrUnknown(data['explicit']!, _explicitMeta));
    } else if (isInserting) {
      context.missing(_explicitMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('medium')) {
      context.handle(_mediumMeta,
          medium.isAcceptableOrUnknown(data['medium']!, _mediumMeta));
    } else if (isInserting) {
      context.missing(_mediumMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('episode_count')) {
      context.handle(
          _episodeCountMeta,
          episodeCount.isAcceptableOrUnknown(
              data['episode_count']!, _episodeCountMeta));
    } else if (isInserting) {
      context.missing(_episodeCountMeta);
    }
    if (data.containsKey('crawl_errors')) {
      context.handle(
          _crawlErrorsMeta,
          crawlErrors.isAcceptableOrUnknown(
              data['crawl_errors']!, _crawlErrorsMeta));
    } else if (isInserting) {
      context.missing(_crawlErrorsMeta);
    }
    context.handle(_categoriesMeta, const VerificationResult.success());
    if (data.containsKey('dead')) {
      context.handle(
          _deadMeta, dead.isAcceptableOrUnknown(data['dead']!, _deadMeta));
    } else if (isInserting) {
      context.missing(_deadMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
          _contentTypeMeta,
          contentType.isAcceptableOrUnknown(
              data['content_type']!, _contentTypeMeta));
    } else if (isInserting) {
      context.missing(_contentTypeMeta);
    }
    if (data.containsKey('generator')) {
      context.handle(_generatorMeta,
          generator.isAcceptableOrUnknown(data['generator']!, _generatorMeta));
    } else if (isInserting) {
      context.missing(_generatorMeta);
    }
    if (data.containsKey('palette_color')) {
      context.handle(
          _paletteColorMeta,
          paletteColor.isAcceptableOrUnknown(
              data['palette_color']!, _paletteColorMeta));
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
      podcastGuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}podcast_guid'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      ownerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      artwork: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}artwork'])!,
      lastUpdateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_update_time'])!,
      explicit: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}explicit'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      medium: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}medium'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      episodeCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_count'])!,
      crawlErrors: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}crawl_errors'])!,
      categories: $ShowsTable.$convertercategories.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}categories'])!),
      dead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dead'])!,
      contentType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_type'])!,
      generator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}generator'])!,
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
  final String podcastGuid;
  final String title;
  final String url;
  final String link;
  final String description;
  final String author;
  final String ownerName;
  final String image;
  final String artwork;
  final int lastUpdateTime;
  final bool explicit;
  final int type;
  final String medium;
  final String language;
  final int episodeCount;
  final int crawlErrors;
  final Map<String, dynamic> categories;
  final int dead;
  final String contentType;
  final String generator;
  final int paletteColor;
  final bool isFollowed;
  const Show(
      {required this.id,
      required this.podcastGuid,
      required this.title,
      required this.url,
      required this.link,
      required this.description,
      required this.author,
      required this.ownerName,
      required this.image,
      required this.artwork,
      required this.lastUpdateTime,
      required this.explicit,
      required this.type,
      required this.medium,
      required this.language,
      required this.episodeCount,
      required this.crawlErrors,
      required this.categories,
      required this.dead,
      required this.contentType,
      required this.generator,
      required this.paletteColor,
      required this.isFollowed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['podcast_guid'] = Variable<String>(podcastGuid);
    map['title'] = Variable<String>(title);
    map['url'] = Variable<String>(url);
    map['link'] = Variable<String>(link);
    map['description'] = Variable<String>(description);
    map['author'] = Variable<String>(author);
    map['owner_name'] = Variable<String>(ownerName);
    map['image'] = Variable<String>(image);
    map['artwork'] = Variable<String>(artwork);
    map['last_update_time'] = Variable<int>(lastUpdateTime);
    map['explicit'] = Variable<bool>(explicit);
    map['type'] = Variable<int>(type);
    map['medium'] = Variable<String>(medium);
    map['language'] = Variable<String>(language);
    map['episode_count'] = Variable<int>(episodeCount);
    map['crawl_errors'] = Variable<int>(crawlErrors);
    {
      map['categories'] =
          Variable<String>($ShowsTable.$convertercategories.toSql(categories));
    }
    map['dead'] = Variable<int>(dead);
    map['content_type'] = Variable<String>(contentType);
    map['generator'] = Variable<String>(generator);
    map['palette_color'] = Variable<int>(paletteColor);
    map['is_followed'] = Variable<bool>(isFollowed);
    return map;
  }

  ShowsCompanion toCompanion(bool nullToAbsent) {
    return ShowsCompanion(
      id: Value(id),
      podcastGuid: Value(podcastGuid),
      title: Value(title),
      url: Value(url),
      link: Value(link),
      description: Value(description),
      author: Value(author),
      ownerName: Value(ownerName),
      image: Value(image),
      artwork: Value(artwork),
      lastUpdateTime: Value(lastUpdateTime),
      explicit: Value(explicit),
      type: Value(type),
      medium: Value(medium),
      language: Value(language),
      episodeCount: Value(episodeCount),
      crawlErrors: Value(crawlErrors),
      categories: Value(categories),
      dead: Value(dead),
      contentType: Value(contentType),
      generator: Value(generator),
      paletteColor: Value(paletteColor),
      isFollowed: Value(isFollowed),
    );
  }

  factory Show.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Show(
      id: serializer.fromJson<int>(json['id']),
      podcastGuid: serializer.fromJson<String>(json['podcastGuid']),
      title: serializer.fromJson<String>(json['title']),
      url: serializer.fromJson<String>(json['url']),
      link: serializer.fromJson<String>(json['link']),
      description: serializer.fromJson<String>(json['description']),
      author: serializer.fromJson<String>(json['author']),
      ownerName: serializer.fromJson<String>(json['ownerName']),
      image: serializer.fromJson<String>(json['image']),
      artwork: serializer.fromJson<String>(json['artwork']),
      lastUpdateTime: serializer.fromJson<int>(json['lastUpdateTime']),
      explicit: serializer.fromJson<bool>(json['explicit']),
      type: serializer.fromJson<int>(json['type']),
      medium: serializer.fromJson<String>(json['medium']),
      language: serializer.fromJson<String>(json['language']),
      episodeCount: serializer.fromJson<int>(json['episodeCount']),
      crawlErrors: serializer.fromJson<int>(json['crawlErrors']),
      categories: serializer.fromJson<Map<String, dynamic>>(json['categories']),
      dead: serializer.fromJson<int>(json['dead']),
      contentType: serializer.fromJson<String>(json['contentType']),
      generator: serializer.fromJson<String>(json['generator']),
      paletteColor: serializer.fromJson<int>(json['paletteColor']),
      isFollowed: serializer.fromJson<bool>(json['isFollowed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'podcastGuid': serializer.toJson<String>(podcastGuid),
      'title': serializer.toJson<String>(title),
      'url': serializer.toJson<String>(url),
      'link': serializer.toJson<String>(link),
      'description': serializer.toJson<String>(description),
      'author': serializer.toJson<String>(author),
      'ownerName': serializer.toJson<String>(ownerName),
      'image': serializer.toJson<String>(image),
      'artwork': serializer.toJson<String>(artwork),
      'lastUpdateTime': serializer.toJson<int>(lastUpdateTime),
      'explicit': serializer.toJson<bool>(explicit),
      'type': serializer.toJson<int>(type),
      'medium': serializer.toJson<String>(medium),
      'language': serializer.toJson<String>(language),
      'episodeCount': serializer.toJson<int>(episodeCount),
      'crawlErrors': serializer.toJson<int>(crawlErrors),
      'categories': serializer.toJson<Map<String, dynamic>>(categories),
      'dead': serializer.toJson<int>(dead),
      'contentType': serializer.toJson<String>(contentType),
      'generator': serializer.toJson<String>(generator),
      'paletteColor': serializer.toJson<int>(paletteColor),
      'isFollowed': serializer.toJson<bool>(isFollowed),
    };
  }

  Show copyWith(
          {int? id,
          String? podcastGuid,
          String? title,
          String? url,
          String? link,
          String? description,
          String? author,
          String? ownerName,
          String? image,
          String? artwork,
          int? lastUpdateTime,
          bool? explicit,
          int? type,
          String? medium,
          String? language,
          int? episodeCount,
          int? crawlErrors,
          Map<String, dynamic>? categories,
          int? dead,
          String? contentType,
          String? generator,
          int? paletteColor,
          bool? isFollowed}) =>
      Show(
        id: id ?? this.id,
        podcastGuid: podcastGuid ?? this.podcastGuid,
        title: title ?? this.title,
        url: url ?? this.url,
        link: link ?? this.link,
        description: description ?? this.description,
        author: author ?? this.author,
        ownerName: ownerName ?? this.ownerName,
        image: image ?? this.image,
        artwork: artwork ?? this.artwork,
        lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
        explicit: explicit ?? this.explicit,
        type: type ?? this.type,
        medium: medium ?? this.medium,
        language: language ?? this.language,
        episodeCount: episodeCount ?? this.episodeCount,
        crawlErrors: crawlErrors ?? this.crawlErrors,
        categories: categories ?? this.categories,
        dead: dead ?? this.dead,
        contentType: contentType ?? this.contentType,
        generator: generator ?? this.generator,
        paletteColor: paletteColor ?? this.paletteColor,
        isFollowed: isFollowed ?? this.isFollowed,
      );
  Show copyWithCompanion(ShowsCompanion data) {
    return Show(
      id: data.id.present ? data.id.value : this.id,
      podcastGuid:
          data.podcastGuid.present ? data.podcastGuid.value : this.podcastGuid,
      title: data.title.present ? data.title.value : this.title,
      url: data.url.present ? data.url.value : this.url,
      link: data.link.present ? data.link.value : this.link,
      description:
          data.description.present ? data.description.value : this.description,
      author: data.author.present ? data.author.value : this.author,
      ownerName: data.ownerName.present ? data.ownerName.value : this.ownerName,
      image: data.image.present ? data.image.value : this.image,
      artwork: data.artwork.present ? data.artwork.value : this.artwork,
      lastUpdateTime: data.lastUpdateTime.present
          ? data.lastUpdateTime.value
          : this.lastUpdateTime,
      explicit: data.explicit.present ? data.explicit.value : this.explicit,
      type: data.type.present ? data.type.value : this.type,
      medium: data.medium.present ? data.medium.value : this.medium,
      language: data.language.present ? data.language.value : this.language,
      episodeCount: data.episodeCount.present
          ? data.episodeCount.value
          : this.episodeCount,
      crawlErrors:
          data.crawlErrors.present ? data.crawlErrors.value : this.crawlErrors,
      categories:
          data.categories.present ? data.categories.value : this.categories,
      dead: data.dead.present ? data.dead.value : this.dead,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      generator: data.generator.present ? data.generator.value : this.generator,
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
          ..write('podcastGuid: $podcastGuid, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('ownerName: $ownerName, ')
          ..write('image: $image, ')
          ..write('artwork: $artwork, ')
          ..write('lastUpdateTime: $lastUpdateTime, ')
          ..write('explicit: $explicit, ')
          ..write('type: $type, ')
          ..write('medium: $medium, ')
          ..write('language: $language, ')
          ..write('episodeCount: $episodeCount, ')
          ..write('crawlErrors: $crawlErrors, ')
          ..write('categories: $categories, ')
          ..write('dead: $dead, ')
          ..write('contentType: $contentType, ')
          ..write('generator: $generator, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        podcastGuid,
        title,
        url,
        link,
        description,
        author,
        ownerName,
        image,
        artwork,
        lastUpdateTime,
        explicit,
        type,
        medium,
        language,
        episodeCount,
        crawlErrors,
        categories,
        dead,
        contentType,
        generator,
        paletteColor,
        isFollowed
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Show &&
          other.id == this.id &&
          other.podcastGuid == this.podcastGuid &&
          other.title == this.title &&
          other.url == this.url &&
          other.link == this.link &&
          other.description == this.description &&
          other.author == this.author &&
          other.ownerName == this.ownerName &&
          other.image == this.image &&
          other.artwork == this.artwork &&
          other.lastUpdateTime == this.lastUpdateTime &&
          other.explicit == this.explicit &&
          other.type == this.type &&
          other.medium == this.medium &&
          other.language == this.language &&
          other.episodeCount == this.episodeCount &&
          other.crawlErrors == this.crawlErrors &&
          other.categories == this.categories &&
          other.dead == this.dead &&
          other.contentType == this.contentType &&
          other.generator == this.generator &&
          other.paletteColor == this.paletteColor &&
          other.isFollowed == this.isFollowed);
}

class ShowsCompanion extends UpdateCompanion<Show> {
  final Value<int> id;
  final Value<String> podcastGuid;
  final Value<String> title;
  final Value<String> url;
  final Value<String> link;
  final Value<String> description;
  final Value<String> author;
  final Value<String> ownerName;
  final Value<String> image;
  final Value<String> artwork;
  final Value<int> lastUpdateTime;
  final Value<bool> explicit;
  final Value<int> type;
  final Value<String> medium;
  final Value<String> language;
  final Value<int> episodeCount;
  final Value<int> crawlErrors;
  final Value<Map<String, dynamic>> categories;
  final Value<int> dead;
  final Value<String> contentType;
  final Value<String> generator;
  final Value<int> paletteColor;
  final Value<bool> isFollowed;
  const ShowsCompanion({
    this.id = const Value.absent(),
    this.podcastGuid = const Value.absent(),
    this.title = const Value.absent(),
    this.url = const Value.absent(),
    this.link = const Value.absent(),
    this.description = const Value.absent(),
    this.author = const Value.absent(),
    this.ownerName = const Value.absent(),
    this.image = const Value.absent(),
    this.artwork = const Value.absent(),
    this.lastUpdateTime = const Value.absent(),
    this.explicit = const Value.absent(),
    this.type = const Value.absent(),
    this.medium = const Value.absent(),
    this.language = const Value.absent(),
    this.episodeCount = const Value.absent(),
    this.crawlErrors = const Value.absent(),
    this.categories = const Value.absent(),
    this.dead = const Value.absent(),
    this.contentType = const Value.absent(),
    this.generator = const Value.absent(),
    this.paletteColor = const Value.absent(),
    this.isFollowed = const Value.absent(),
  });
  ShowsCompanion.insert({
    this.id = const Value.absent(),
    required String podcastGuid,
    required String title,
    required String url,
    required String link,
    required String description,
    required String author,
    required String ownerName,
    required String image,
    required String artwork,
    required int lastUpdateTime,
    required bool explicit,
    required int type,
    required String medium,
    required String language,
    required int episodeCount,
    required int crawlErrors,
    required Map<String, dynamic> categories,
    required int dead,
    required String contentType,
    required String generator,
    this.paletteColor = const Value.absent(),
    required bool isFollowed,
  })  : podcastGuid = Value(podcastGuid),
        title = Value(title),
        url = Value(url),
        link = Value(link),
        description = Value(description),
        author = Value(author),
        ownerName = Value(ownerName),
        image = Value(image),
        artwork = Value(artwork),
        lastUpdateTime = Value(lastUpdateTime),
        explicit = Value(explicit),
        type = Value(type),
        medium = Value(medium),
        language = Value(language),
        episodeCount = Value(episodeCount),
        crawlErrors = Value(crawlErrors),
        categories = Value(categories),
        dead = Value(dead),
        contentType = Value(contentType),
        generator = Value(generator),
        isFollowed = Value(isFollowed);
  static Insertable<Show> custom({
    Expression<int>? id,
    Expression<String>? podcastGuid,
    Expression<String>? title,
    Expression<String>? url,
    Expression<String>? link,
    Expression<String>? description,
    Expression<String>? author,
    Expression<String>? ownerName,
    Expression<String>? image,
    Expression<String>? artwork,
    Expression<int>? lastUpdateTime,
    Expression<bool>? explicit,
    Expression<int>? type,
    Expression<String>? medium,
    Expression<String>? language,
    Expression<int>? episodeCount,
    Expression<int>? crawlErrors,
    Expression<String>? categories,
    Expression<int>? dead,
    Expression<String>? contentType,
    Expression<String>? generator,
    Expression<int>? paletteColor,
    Expression<bool>? isFollowed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (podcastGuid != null) 'podcast_guid': podcastGuid,
      if (title != null) 'title': title,
      if (url != null) 'url': url,
      if (link != null) 'link': link,
      if (description != null) 'description': description,
      if (author != null) 'author': author,
      if (ownerName != null) 'owner_name': ownerName,
      if (image != null) 'image': image,
      if (artwork != null) 'artwork': artwork,
      if (lastUpdateTime != null) 'last_update_time': lastUpdateTime,
      if (explicit != null) 'explicit': explicit,
      if (type != null) 'type': type,
      if (medium != null) 'medium': medium,
      if (language != null) 'language': language,
      if (episodeCount != null) 'episode_count': episodeCount,
      if (crawlErrors != null) 'crawl_errors': crawlErrors,
      if (categories != null) 'categories': categories,
      if (dead != null) 'dead': dead,
      if (contentType != null) 'content_type': contentType,
      if (generator != null) 'generator': generator,
      if (paletteColor != null) 'palette_color': paletteColor,
      if (isFollowed != null) 'is_followed': isFollowed,
    });
  }

  ShowsCompanion copyWith(
      {Value<int>? id,
      Value<String>? podcastGuid,
      Value<String>? title,
      Value<String>? url,
      Value<String>? link,
      Value<String>? description,
      Value<String>? author,
      Value<String>? ownerName,
      Value<String>? image,
      Value<String>? artwork,
      Value<int>? lastUpdateTime,
      Value<bool>? explicit,
      Value<int>? type,
      Value<String>? medium,
      Value<String>? language,
      Value<int>? episodeCount,
      Value<int>? crawlErrors,
      Value<Map<String, dynamic>>? categories,
      Value<int>? dead,
      Value<String>? contentType,
      Value<String>? generator,
      Value<int>? paletteColor,
      Value<bool>? isFollowed}) {
    return ShowsCompanion(
      id: id ?? this.id,
      podcastGuid: podcastGuid ?? this.podcastGuid,
      title: title ?? this.title,
      url: url ?? this.url,
      link: link ?? this.link,
      description: description ?? this.description,
      author: author ?? this.author,
      ownerName: ownerName ?? this.ownerName,
      image: image ?? this.image,
      artwork: artwork ?? this.artwork,
      lastUpdateTime: lastUpdateTime ?? this.lastUpdateTime,
      explicit: explicit ?? this.explicit,
      type: type ?? this.type,
      medium: medium ?? this.medium,
      language: language ?? this.language,
      episodeCount: episodeCount ?? this.episodeCount,
      crawlErrors: crawlErrors ?? this.crawlErrors,
      categories: categories ?? this.categories,
      dead: dead ?? this.dead,
      contentType: contentType ?? this.contentType,
      generator: generator ?? this.generator,
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
    if (podcastGuid.present) {
      map['podcast_guid'] = Variable<String>(podcastGuid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
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
    if (ownerName.present) {
      map['owner_name'] = Variable<String>(ownerName.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (artwork.present) {
      map['artwork'] = Variable<String>(artwork.value);
    }
    if (lastUpdateTime.present) {
      map['last_update_time'] = Variable<int>(lastUpdateTime.value);
    }
    if (explicit.present) {
      map['explicit'] = Variable<bool>(explicit.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (medium.present) {
      map['medium'] = Variable<String>(medium.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (episodeCount.present) {
      map['episode_count'] = Variable<int>(episodeCount.value);
    }
    if (crawlErrors.present) {
      map['crawl_errors'] = Variable<int>(crawlErrors.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>(
          $ShowsTable.$convertercategories.toSql(categories.value));
    }
    if (dead.present) {
      map['dead'] = Variable<int>(dead.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<String>(contentType.value);
    }
    if (generator.present) {
      map['generator'] = Variable<String>(generator.value);
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
          ..write('podcastGuid: $podcastGuid, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('link: $link, ')
          ..write('description: $description, ')
          ..write('author: $author, ')
          ..write('ownerName: $ownerName, ')
          ..write('image: $image, ')
          ..write('artwork: $artwork, ')
          ..write('lastUpdateTime: $lastUpdateTime, ')
          ..write('explicit: $explicit, ')
          ..write('type: $type, ')
          ..write('medium: $medium, ')
          ..write('language: $language, ')
          ..write('episodeCount: $episodeCount, ')
          ..write('crawlErrors: $crawlErrors, ')
          ..write('categories: $categories, ')
          ..write('dead: $dead, ')
          ..write('contentType: $contentType, ')
          ..write('generator: $generator, ')
          ..write('paletteColor: $paletteColor, ')
          ..write('isFollowed: $isFollowed')
          ..write(')'))
        .toString();
  }
}

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
  static const VerificationMeta _episodeGuidMeta =
      const VerificationMeta('episodeGuid');
  @override
  late final GeneratedColumn<String> episodeGuid = GeneratedColumn<String>(
      'episode_guid', aliasedName, false,
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
  static const VerificationMeta _showIdMeta = const VerificationMeta('showId');
  @override
  late final GeneratedColumn<int> showId = GeneratedColumn<int>(
      'show_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES shows (id)'));
  static const VerificationMeta _chaptersUrlMeta =
      const VerificationMeta('chaptersUrl');
  @override
  late final GeneratedColumn<String> chaptersUrl = GeneratedColumn<String>(
      'chapters_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transcriptUrlMeta =
      const VerificationMeta('transcriptUrl');
  @override
  late final GeneratedColumn<String> transcriptUrl = GeneratedColumn<String>(
      'transcript_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedGuidMeta =
      const VerificationMeta('feedGuid');
  @override
  late final GeneratedColumn<String> feedGuid = GeneratedColumn<String>(
      'feed_guid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedUrlMeta =
      const VerificationMeta('feedUrl');
  @override
  late final GeneratedColumn<String> feedUrl = GeneratedColumn<String>(
      'feed_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedImageMeta =
      const VerificationMeta('feedImage');
  @override
  late final GeneratedColumn<String> feedImage = GeneratedColumn<String>(
      'feed_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedIdMeta = const VerificationMeta('feedId');
  @override
  late final GeneratedColumn<String> feedId = GeneratedColumn<String>(
      'feed_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedLanguageMeta =
      const VerificationMeta('feedLanguage');
  @override
  late final GeneratedColumn<String> feedLanguage = GeneratedColumn<String>(
      'feed_language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _feedDeadMeta =
      const VerificationMeta('feedDead');
  @override
  late final GeneratedColumn<String> feedDead = GeneratedColumn<String>(
      'feed_dead', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentTypeMeta =
      const VerificationMeta('contentType');
  @override
  late final GeneratedColumn<String> contentType = GeneratedColumn<String>(
      'content_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mediumMeta = const VerificationMeta('medium');
  @override
  late final GeneratedColumn<String> medium = GeneratedColumn<String>(
      'medium', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _completeMeta =
      const VerificationMeta('complete');
  @override
  late final GeneratedColumn<bool> complete = GeneratedColumn<bool>(
      'complete', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("complete" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _socialInteractMeta =
      const VerificationMeta('socialInteract');
  @override
  late final GeneratedColumn<String> socialInteract = GeneratedColumn<String>(
      'social_interact', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _liveItemsMeta =
      const VerificationMeta('liveItems');
  @override
  late final GeneratedColumn<String> liveItems = GeneratedColumn<String>(
      'live_items', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _soundbiteMeta =
      const VerificationMeta('soundbite');
  @override
  late final GeneratedColumn<String> soundbite = GeneratedColumn<String>(
      'soundbite', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _durationRemainingMeta =
      const VerificationMeta('durationRemaining');
  @override
  late final GeneratedColumn<int> durationRemaining = GeneratedColumn<int>(
      'duration_remaining', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isPlayedMeta =
      const VerificationMeta('isPlayed');
  @override
  late final GeneratedColumn<bool> isPlayed = GeneratedColumn<bool>(
      'is_played', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_played" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isPlayingMeta =
      const VerificationMeta('isPlaying');
  @override
  late final GeneratedColumn<bool> isPlaying = GeneratedColumn<bool>(
      'is_playing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_playing" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        episodeGuid,
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
        showId,
        chaptersUrl,
        transcriptUrl,
        feedGuid,
        feedUrl,
        feedImage,
        feedId,
        feedLanguage,
        feedDead,
        contentType,
        medium,
        complete,
        socialInteract,
        value,
        liveItems,
        soundbite,
        durationRemaining,
        isPlayed,
        isPlaying
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
    if (data.containsKey('episode_guid')) {
      context.handle(
          _episodeGuidMeta,
          episodeGuid.isAcceptableOrUnknown(
              data['episode_guid']!, _episodeGuidMeta));
    } else if (isInserting) {
      context.missing(_episodeGuidMeta);
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
    if (data.containsKey('show_id')) {
      context.handle(_showIdMeta,
          showId.isAcceptableOrUnknown(data['show_id']!, _showIdMeta));
    } else if (isInserting) {
      context.missing(_showIdMeta);
    }
    if (data.containsKey('chapters_url')) {
      context.handle(
          _chaptersUrlMeta,
          chaptersUrl.isAcceptableOrUnknown(
              data['chapters_url']!, _chaptersUrlMeta));
    } else if (isInserting) {
      context.missing(_chaptersUrlMeta);
    }
    if (data.containsKey('transcript_url')) {
      context.handle(
          _transcriptUrlMeta,
          transcriptUrl.isAcceptableOrUnknown(
              data['transcript_url']!, _transcriptUrlMeta));
    } else if (isInserting) {
      context.missing(_transcriptUrlMeta);
    }
    if (data.containsKey('feed_guid')) {
      context.handle(_feedGuidMeta,
          feedGuid.isAcceptableOrUnknown(data['feed_guid']!, _feedGuidMeta));
    } else if (isInserting) {
      context.missing(_feedGuidMeta);
    }
    if (data.containsKey('feed_url')) {
      context.handle(_feedUrlMeta,
          feedUrl.isAcceptableOrUnknown(data['feed_url']!, _feedUrlMeta));
    } else if (isInserting) {
      context.missing(_feedUrlMeta);
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
    if (data.containsKey('feed_language')) {
      context.handle(
          _feedLanguageMeta,
          feedLanguage.isAcceptableOrUnknown(
              data['feed_language']!, _feedLanguageMeta));
    } else if (isInserting) {
      context.missing(_feedLanguageMeta);
    }
    if (data.containsKey('feed_dead')) {
      context.handle(_feedDeadMeta,
          feedDead.isAcceptableOrUnknown(data['feed_dead']!, _feedDeadMeta));
    } else if (isInserting) {
      context.missing(_feedDeadMeta);
    }
    if (data.containsKey('content_type')) {
      context.handle(
          _contentTypeMeta,
          contentType.isAcceptableOrUnknown(
              data['content_type']!, _contentTypeMeta));
    } else if (isInserting) {
      context.missing(_contentTypeMeta);
    }
    if (data.containsKey('medium')) {
      context.handle(_mediumMeta,
          medium.isAcceptableOrUnknown(data['medium']!, _mediumMeta));
    } else if (isInserting) {
      context.missing(_mediumMeta);
    }
    if (data.containsKey('complete')) {
      context.handle(_completeMeta,
          complete.isAcceptableOrUnknown(data['complete']!, _completeMeta));
    }
    if (data.containsKey('social_interact')) {
      context.handle(
          _socialInteractMeta,
          socialInteract.isAcceptableOrUnknown(
              data['social_interact']!, _socialInteractMeta));
    } else if (isInserting) {
      context.missing(_socialInteractMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('live_items')) {
      context.handle(_liveItemsMeta,
          liveItems.isAcceptableOrUnknown(data['live_items']!, _liveItemsMeta));
    } else if (isInserting) {
      context.missing(_liveItemsMeta);
    }
    if (data.containsKey('soundbite')) {
      context.handle(_soundbiteMeta,
          soundbite.isAcceptableOrUnknown(data['soundbite']!, _soundbiteMeta));
    } else if (isInserting) {
      context.missing(_soundbiteMeta);
    }
    if (data.containsKey('duration_remaining')) {
      context.handle(
          _durationRemainingMeta,
          durationRemaining.isAcceptableOrUnknown(
              data['duration_remaining']!, _durationRemainingMeta));
    } else if (isInserting) {
      context.missing(_durationRemainingMeta);
    }
    if (data.containsKey('is_played')) {
      context.handle(_isPlayedMeta,
          isPlayed.isAcceptableOrUnknown(data['is_played']!, _isPlayedMeta));
    }
    if (data.containsKey('is_playing')) {
      context.handle(_isPlayingMeta,
          isPlaying.isAcceptableOrUnknown(data['is_playing']!, _isPlayingMeta));
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
      episodeGuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}episode_guid'])!,
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
      showId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}show_id'])!,
      chaptersUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}chapters_url'])!,
      transcriptUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}transcript_url'])!,
      feedGuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_guid'])!,
      feedUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_url'])!,
      feedImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_image'])!,
      feedId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_id'])!,
      feedLanguage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_language'])!,
      feedDead: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}feed_dead'])!,
      contentType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_type'])!,
      medium: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}medium'])!,
      complete: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}complete'])!,
      socialInteract: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}social_interact'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      liveItems: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}live_items'])!,
      soundbite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}soundbite'])!,
      durationRemaining: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}duration_remaining'])!,
      isPlayed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_played'])!,
      isPlaying: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_playing'])!,
    );
  }

  @override
  $EpisodesTable createAlias(String alias) {
    return $EpisodesTable(attachedDatabase, alias);
  }
}

class Episode extends DataClass implements Insertable<Episode> {
  final int id;
  final String episodeGuid;
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
  final int showId;
  final String chaptersUrl;
  final String transcriptUrl;
  final String feedGuid;
  final String feedUrl;
  final String feedImage;
  final String feedId;
  final String feedLanguage;
  final String feedDead;
  final String contentType;
  final String medium;
  final bool complete;
  final String socialInteract;
  final String value;
  final String liveItems;
  final String soundbite;
  final int durationRemaining;
  final bool isPlayed;
  final bool isPlaying;
  const Episode(
      {required this.id,
      required this.episodeGuid,
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
      required this.showId,
      required this.chaptersUrl,
      required this.transcriptUrl,
      required this.feedGuid,
      required this.feedUrl,
      required this.feedImage,
      required this.feedId,
      required this.feedLanguage,
      required this.feedDead,
      required this.contentType,
      required this.medium,
      required this.complete,
      required this.socialInteract,
      required this.value,
      required this.liveItems,
      required this.soundbite,
      required this.durationRemaining,
      required this.isPlayed,
      required this.isPlaying});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['episode_guid'] = Variable<String>(episodeGuid);
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
    map['show_id'] = Variable<int>(showId);
    map['chapters_url'] = Variable<String>(chaptersUrl);
    map['transcript_url'] = Variable<String>(transcriptUrl);
    map['feed_guid'] = Variable<String>(feedGuid);
    map['feed_url'] = Variable<String>(feedUrl);
    map['feed_image'] = Variable<String>(feedImage);
    map['feed_id'] = Variable<String>(feedId);
    map['feed_language'] = Variable<String>(feedLanguage);
    map['feed_dead'] = Variable<String>(feedDead);
    map['content_type'] = Variable<String>(contentType);
    map['medium'] = Variable<String>(medium);
    map['complete'] = Variable<bool>(complete);
    map['social_interact'] = Variable<String>(socialInteract);
    map['value'] = Variable<String>(value);
    map['live_items'] = Variable<String>(liveItems);
    map['soundbite'] = Variable<String>(soundbite);
    map['duration_remaining'] = Variable<int>(durationRemaining);
    map['is_played'] = Variable<bool>(isPlayed);
    map['is_playing'] = Variable<bool>(isPlaying);
    return map;
  }

  EpisodesCompanion toCompanion(bool nullToAbsent) {
    return EpisodesCompanion(
      id: Value(id),
      episodeGuid: Value(episodeGuid),
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
      showId: Value(showId),
      chaptersUrl: Value(chaptersUrl),
      transcriptUrl: Value(transcriptUrl),
      feedGuid: Value(feedGuid),
      feedUrl: Value(feedUrl),
      feedImage: Value(feedImage),
      feedId: Value(feedId),
      feedLanguage: Value(feedLanguage),
      feedDead: Value(feedDead),
      contentType: Value(contentType),
      medium: Value(medium),
      complete: Value(complete),
      socialInteract: Value(socialInteract),
      value: Value(value),
      liveItems: Value(liveItems),
      soundbite: Value(soundbite),
      durationRemaining: Value(durationRemaining),
      isPlayed: Value(isPlayed),
      isPlaying: Value(isPlaying),
    );
  }

  factory Episode.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Episode(
      id: serializer.fromJson<int>(json['id']),
      episodeGuid: serializer.fromJson<String>(json['episodeGuid']),
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
      showId: serializer.fromJson<int>(json['showId']),
      chaptersUrl: serializer.fromJson<String>(json['chaptersUrl']),
      transcriptUrl: serializer.fromJson<String>(json['transcriptUrl']),
      feedGuid: serializer.fromJson<String>(json['feedGuid']),
      feedUrl: serializer.fromJson<String>(json['feedUrl']),
      feedImage: serializer.fromJson<String>(json['feedImage']),
      feedId: serializer.fromJson<String>(json['feedId']),
      feedLanguage: serializer.fromJson<String>(json['feedLanguage']),
      feedDead: serializer.fromJson<String>(json['feedDead']),
      contentType: serializer.fromJson<String>(json['contentType']),
      medium: serializer.fromJson<String>(json['medium']),
      complete: serializer.fromJson<bool>(json['complete']),
      socialInteract: serializer.fromJson<String>(json['socialInteract']),
      value: serializer.fromJson<String>(json['value']),
      liveItems: serializer.fromJson<String>(json['liveItems']),
      soundbite: serializer.fromJson<String>(json['soundbite']),
      durationRemaining: serializer.fromJson<int>(json['durationRemaining']),
      isPlayed: serializer.fromJson<bool>(json['isPlayed']),
      isPlaying: serializer.fromJson<bool>(json['isPlaying']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'episodeGuid': serializer.toJson<String>(episodeGuid),
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
      'showId': serializer.toJson<int>(showId),
      'chaptersUrl': serializer.toJson<String>(chaptersUrl),
      'transcriptUrl': serializer.toJson<String>(transcriptUrl),
      'feedGuid': serializer.toJson<String>(feedGuid),
      'feedUrl': serializer.toJson<String>(feedUrl),
      'feedImage': serializer.toJson<String>(feedImage),
      'feedId': serializer.toJson<String>(feedId),
      'feedLanguage': serializer.toJson<String>(feedLanguage),
      'feedDead': serializer.toJson<String>(feedDead),
      'contentType': serializer.toJson<String>(contentType),
      'medium': serializer.toJson<String>(medium),
      'complete': serializer.toJson<bool>(complete),
      'socialInteract': serializer.toJson<String>(socialInteract),
      'value': serializer.toJson<String>(value),
      'liveItems': serializer.toJson<String>(liveItems),
      'soundbite': serializer.toJson<String>(soundbite),
      'durationRemaining': serializer.toJson<int>(durationRemaining),
      'isPlayed': serializer.toJson<bool>(isPlayed),
      'isPlaying': serializer.toJson<bool>(isPlaying),
    };
  }

  Episode copyWith(
          {int? id,
          String? episodeGuid,
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
          int? showId,
          String? chaptersUrl,
          String? transcriptUrl,
          String? feedGuid,
          String? feedUrl,
          String? feedImage,
          String? feedId,
          String? feedLanguage,
          String? feedDead,
          String? contentType,
          String? medium,
          bool? complete,
          String? socialInteract,
          String? value,
          String? liveItems,
          String? soundbite,
          int? durationRemaining,
          bool? isPlayed,
          bool? isPlaying}) =>
      Episode(
        id: id ?? this.id,
        episodeGuid: episodeGuid ?? this.episodeGuid,
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
        showId: showId ?? this.showId,
        chaptersUrl: chaptersUrl ?? this.chaptersUrl,
        transcriptUrl: transcriptUrl ?? this.transcriptUrl,
        feedGuid: feedGuid ?? this.feedGuid,
        feedUrl: feedUrl ?? this.feedUrl,
        feedImage: feedImage ?? this.feedImage,
        feedId: feedId ?? this.feedId,
        feedLanguage: feedLanguage ?? this.feedLanguage,
        feedDead: feedDead ?? this.feedDead,
        contentType: contentType ?? this.contentType,
        medium: medium ?? this.medium,
        complete: complete ?? this.complete,
        socialInteract: socialInteract ?? this.socialInteract,
        value: value ?? this.value,
        liveItems: liveItems ?? this.liveItems,
        soundbite: soundbite ?? this.soundbite,
        durationRemaining: durationRemaining ?? this.durationRemaining,
        isPlayed: isPlayed ?? this.isPlayed,
        isPlaying: isPlaying ?? this.isPlaying,
      );
  Episode copyWithCompanion(EpisodesCompanion data) {
    return Episode(
      id: data.id.present ? data.id.value : this.id,
      episodeGuid:
          data.episodeGuid.present ? data.episodeGuid.value : this.episodeGuid,
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
      showId: data.showId.present ? data.showId.value : this.showId,
      chaptersUrl:
          data.chaptersUrl.present ? data.chaptersUrl.value : this.chaptersUrl,
      transcriptUrl: data.transcriptUrl.present
          ? data.transcriptUrl.value
          : this.transcriptUrl,
      feedGuid: data.feedGuid.present ? data.feedGuid.value : this.feedGuid,
      feedUrl: data.feedUrl.present ? data.feedUrl.value : this.feedUrl,
      feedImage: data.feedImage.present ? data.feedImage.value : this.feedImage,
      feedId: data.feedId.present ? data.feedId.value : this.feedId,
      feedLanguage: data.feedLanguage.present
          ? data.feedLanguage.value
          : this.feedLanguage,
      feedDead: data.feedDead.present ? data.feedDead.value : this.feedDead,
      contentType:
          data.contentType.present ? data.contentType.value : this.contentType,
      medium: data.medium.present ? data.medium.value : this.medium,
      complete: data.complete.present ? data.complete.value : this.complete,
      socialInteract: data.socialInteract.present
          ? data.socialInteract.value
          : this.socialInteract,
      value: data.value.present ? data.value.value : this.value,
      liveItems: data.liveItems.present ? data.liveItems.value : this.liveItems,
      soundbite: data.soundbite.present ? data.soundbite.value : this.soundbite,
      durationRemaining: data.durationRemaining.present
          ? data.durationRemaining.value
          : this.durationRemaining,
      isPlayed: data.isPlayed.present ? data.isPlayed.value : this.isPlayed,
      isPlaying: data.isPlaying.present ? data.isPlaying.value : this.isPlaying,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Episode(')
          ..write('id: $id, ')
          ..write('episodeGuid: $episodeGuid, ')
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
          ..write('showId: $showId, ')
          ..write('chaptersUrl: $chaptersUrl, ')
          ..write('transcriptUrl: $transcriptUrl, ')
          ..write('feedGuid: $feedGuid, ')
          ..write('feedUrl: $feedUrl, ')
          ..write('feedImage: $feedImage, ')
          ..write('feedId: $feedId, ')
          ..write('feedLanguage: $feedLanguage, ')
          ..write('feedDead: $feedDead, ')
          ..write('contentType: $contentType, ')
          ..write('medium: $medium, ')
          ..write('complete: $complete, ')
          ..write('socialInteract: $socialInteract, ')
          ..write('value: $value, ')
          ..write('liveItems: $liveItems, ')
          ..write('soundbite: $soundbite, ')
          ..write('durationRemaining: $durationRemaining, ')
          ..write('isPlayed: $isPlayed, ')
          ..write('isPlaying: $isPlaying')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        episodeGuid,
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
        showId,
        chaptersUrl,
        transcriptUrl,
        feedGuid,
        feedUrl,
        feedImage,
        feedId,
        feedLanguage,
        feedDead,
        contentType,
        medium,
        complete,
        socialInteract,
        value,
        liveItems,
        soundbite,
        durationRemaining,
        isPlayed,
        isPlaying
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Episode &&
          other.id == this.id &&
          other.episodeGuid == this.episodeGuid &&
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
          other.showId == this.showId &&
          other.chaptersUrl == this.chaptersUrl &&
          other.transcriptUrl == this.transcriptUrl &&
          other.feedGuid == this.feedGuid &&
          other.feedUrl == this.feedUrl &&
          other.feedImage == this.feedImage &&
          other.feedId == this.feedId &&
          other.feedLanguage == this.feedLanguage &&
          other.feedDead == this.feedDead &&
          other.contentType == this.contentType &&
          other.medium == this.medium &&
          other.complete == this.complete &&
          other.socialInteract == this.socialInteract &&
          other.value == this.value &&
          other.liveItems == this.liveItems &&
          other.soundbite == this.soundbite &&
          other.durationRemaining == this.durationRemaining &&
          other.isPlayed == this.isPlayed &&
          other.isPlaying == this.isPlaying);
}

class EpisodesCompanion extends UpdateCompanion<Episode> {
  final Value<int> id;
  final Value<String> episodeGuid;
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
  final Value<int> showId;
  final Value<String> chaptersUrl;
  final Value<String> transcriptUrl;
  final Value<String> feedGuid;
  final Value<String> feedUrl;
  final Value<String> feedImage;
  final Value<String> feedId;
  final Value<String> feedLanguage;
  final Value<String> feedDead;
  final Value<String> contentType;
  final Value<String> medium;
  final Value<bool> complete;
  final Value<String> socialInteract;
  final Value<String> value;
  final Value<String> liveItems;
  final Value<String> soundbite;
  final Value<int> durationRemaining;
  final Value<bool> isPlayed;
  final Value<bool> isPlaying;
  const EpisodesCompanion({
    this.id = const Value.absent(),
    this.episodeGuid = const Value.absent(),
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
    this.showId = const Value.absent(),
    this.chaptersUrl = const Value.absent(),
    this.transcriptUrl = const Value.absent(),
    this.feedGuid = const Value.absent(),
    this.feedUrl = const Value.absent(),
    this.feedImage = const Value.absent(),
    this.feedId = const Value.absent(),
    this.feedLanguage = const Value.absent(),
    this.feedDead = const Value.absent(),
    this.contentType = const Value.absent(),
    this.medium = const Value.absent(),
    this.complete = const Value.absent(),
    this.socialInteract = const Value.absent(),
    this.value = const Value.absent(),
    this.liveItems = const Value.absent(),
    this.soundbite = const Value.absent(),
    this.durationRemaining = const Value.absent(),
    this.isPlayed = const Value.absent(),
    this.isPlaying = const Value.absent(),
  });
  EpisodesCompanion.insert({
    this.id = const Value.absent(),
    required String episodeGuid,
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
    required int showId,
    required String chaptersUrl,
    required String transcriptUrl,
    required String feedGuid,
    required String feedUrl,
    required String feedImage,
    required String feedId,
    required String feedLanguage,
    required String feedDead,
    required String contentType,
    required String medium,
    this.complete = const Value.absent(),
    required String socialInteract,
    required String value,
    required String liveItems,
    required String soundbite,
    required int durationRemaining,
    this.isPlayed = const Value.absent(),
    this.isPlaying = const Value.absent(),
  })  : episodeGuid = Value(episodeGuid),
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
        showId = Value(showId),
        chaptersUrl = Value(chaptersUrl),
        transcriptUrl = Value(transcriptUrl),
        feedGuid = Value(feedGuid),
        feedUrl = Value(feedUrl),
        feedImage = Value(feedImage),
        feedId = Value(feedId),
        feedLanguage = Value(feedLanguage),
        feedDead = Value(feedDead),
        contentType = Value(contentType),
        medium = Value(medium),
        socialInteract = Value(socialInteract),
        value = Value(value),
        liveItems = Value(liveItems),
        soundbite = Value(soundbite),
        durationRemaining = Value(durationRemaining);
  static Insertable<Episode> custom({
    Expression<int>? id,
    Expression<String>? episodeGuid,
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
    Expression<int>? showId,
    Expression<String>? chaptersUrl,
    Expression<String>? transcriptUrl,
    Expression<String>? feedGuid,
    Expression<String>? feedUrl,
    Expression<String>? feedImage,
    Expression<String>? feedId,
    Expression<String>? feedLanguage,
    Expression<String>? feedDead,
    Expression<String>? contentType,
    Expression<String>? medium,
    Expression<bool>? complete,
    Expression<String>? socialInteract,
    Expression<String>? value,
    Expression<String>? liveItems,
    Expression<String>? soundbite,
    Expression<int>? durationRemaining,
    Expression<bool>? isPlayed,
    Expression<bool>? isPlaying,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (episodeGuid != null) 'episode_guid': episodeGuid,
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
      if (showId != null) 'show_id': showId,
      if (chaptersUrl != null) 'chapters_url': chaptersUrl,
      if (transcriptUrl != null) 'transcript_url': transcriptUrl,
      if (feedGuid != null) 'feed_guid': feedGuid,
      if (feedUrl != null) 'feed_url': feedUrl,
      if (feedImage != null) 'feed_image': feedImage,
      if (feedId != null) 'feed_id': feedId,
      if (feedLanguage != null) 'feed_language': feedLanguage,
      if (feedDead != null) 'feed_dead': feedDead,
      if (contentType != null) 'content_type': contentType,
      if (medium != null) 'medium': medium,
      if (complete != null) 'complete': complete,
      if (socialInteract != null) 'social_interact': socialInteract,
      if (value != null) 'value': value,
      if (liveItems != null) 'live_items': liveItems,
      if (soundbite != null) 'soundbite': soundbite,
      if (durationRemaining != null) 'duration_remaining': durationRemaining,
      if (isPlayed != null) 'is_played': isPlayed,
      if (isPlaying != null) 'is_playing': isPlaying,
    });
  }

  EpisodesCompanion copyWith(
      {Value<int>? id,
      Value<String>? episodeGuid,
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
      Value<int>? showId,
      Value<String>? chaptersUrl,
      Value<String>? transcriptUrl,
      Value<String>? feedGuid,
      Value<String>? feedUrl,
      Value<String>? feedImage,
      Value<String>? feedId,
      Value<String>? feedLanguage,
      Value<String>? feedDead,
      Value<String>? contentType,
      Value<String>? medium,
      Value<bool>? complete,
      Value<String>? socialInteract,
      Value<String>? value,
      Value<String>? liveItems,
      Value<String>? soundbite,
      Value<int>? durationRemaining,
      Value<bool>? isPlayed,
      Value<bool>? isPlaying}) {
    return EpisodesCompanion(
      id: id ?? this.id,
      episodeGuid: episodeGuid ?? this.episodeGuid,
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
      showId: showId ?? this.showId,
      chaptersUrl: chaptersUrl ?? this.chaptersUrl,
      transcriptUrl: transcriptUrl ?? this.transcriptUrl,
      feedGuid: feedGuid ?? this.feedGuid,
      feedUrl: feedUrl ?? this.feedUrl,
      feedImage: feedImage ?? this.feedImage,
      feedId: feedId ?? this.feedId,
      feedLanguage: feedLanguage ?? this.feedLanguage,
      feedDead: feedDead ?? this.feedDead,
      contentType: contentType ?? this.contentType,
      medium: medium ?? this.medium,
      complete: complete ?? this.complete,
      socialInteract: socialInteract ?? this.socialInteract,
      value: value ?? this.value,
      liveItems: liveItems ?? this.liveItems,
      soundbite: soundbite ?? this.soundbite,
      durationRemaining: durationRemaining ?? this.durationRemaining,
      isPlayed: isPlayed ?? this.isPlayed,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (episodeGuid.present) {
      map['episode_guid'] = Variable<String>(episodeGuid.value);
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
    if (showId.present) {
      map['show_id'] = Variable<int>(showId.value);
    }
    if (chaptersUrl.present) {
      map['chapters_url'] = Variable<String>(chaptersUrl.value);
    }
    if (transcriptUrl.present) {
      map['transcript_url'] = Variable<String>(transcriptUrl.value);
    }
    if (feedGuid.present) {
      map['feed_guid'] = Variable<String>(feedGuid.value);
    }
    if (feedUrl.present) {
      map['feed_url'] = Variable<String>(feedUrl.value);
    }
    if (feedImage.present) {
      map['feed_image'] = Variable<String>(feedImage.value);
    }
    if (feedId.present) {
      map['feed_id'] = Variable<String>(feedId.value);
    }
    if (feedLanguage.present) {
      map['feed_language'] = Variable<String>(feedLanguage.value);
    }
    if (feedDead.present) {
      map['feed_dead'] = Variable<String>(feedDead.value);
    }
    if (contentType.present) {
      map['content_type'] = Variable<String>(contentType.value);
    }
    if (medium.present) {
      map['medium'] = Variable<String>(medium.value);
    }
    if (complete.present) {
      map['complete'] = Variable<bool>(complete.value);
    }
    if (socialInteract.present) {
      map['social_interact'] = Variable<String>(socialInteract.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (liveItems.present) {
      map['live_items'] = Variable<String>(liveItems.value);
    }
    if (soundbite.present) {
      map['soundbite'] = Variable<String>(soundbite.value);
    }
    if (durationRemaining.present) {
      map['duration_remaining'] = Variable<int>(durationRemaining.value);
    }
    if (isPlayed.present) {
      map['is_played'] = Variable<bool>(isPlayed.value);
    }
    if (isPlaying.present) {
      map['is_playing'] = Variable<bool>(isPlaying.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EpisodesCompanion(')
          ..write('id: $id, ')
          ..write('episodeGuid: $episodeGuid, ')
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
          ..write('showId: $showId, ')
          ..write('chaptersUrl: $chaptersUrl, ')
          ..write('transcriptUrl: $transcriptUrl, ')
          ..write('feedGuid: $feedGuid, ')
          ..write('feedUrl: $feedUrl, ')
          ..write('feedImage: $feedImage, ')
          ..write('feedId: $feedId, ')
          ..write('feedLanguage: $feedLanguage, ')
          ..write('feedDead: $feedDead, ')
          ..write('contentType: $contentType, ')
          ..write('medium: $medium, ')
          ..write('complete: $complete, ')
          ..write('socialInteract: $socialInteract, ')
          ..write('value: $value, ')
          ..write('liveItems: $liveItems, ')
          ..write('soundbite: $soundbite, ')
          ..write('durationRemaining: $durationRemaining, ')
          ..write('isPlayed: $isPlayed, ')
          ..write('isPlaying: $isPlaying')
          ..write(')'))
        .toString();
  }
}

class $PlayedEpisodesTable extends PlayedEpisodes
    with TableInfo<$PlayedEpisodesTable, PlayedEpisode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlayedEpisodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _episodeIdMeta =
      const VerificationMeta('episodeId');
  @override
  late final GeneratedColumn<int> episodeId = GeneratedColumn<int>(
      'episode_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES episodes (id)'));
  static const VerificationMeta _durationRemainingMeta =
      const VerificationMeta('durationRemaining');
  @override
  late final GeneratedColumn<int> durationRemaining = GeneratedColumn<int>(
      'duration_remaining', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isPlayedMeta =
      const VerificationMeta('isPlayed');
  @override
  late final GeneratedColumn<bool> isPlayed = GeneratedColumn<bool>(
      'is_played', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_played" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isPlayingMeta =
      const VerificationMeta('isPlaying');
  @override
  late final GeneratedColumn<bool> isPlaying = GeneratedColumn<bool>(
      'is_playing', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_playing" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _lastPlayedAtMeta =
      const VerificationMeta('lastPlayedAt');
  @override
  late final GeneratedColumn<DateTime> lastPlayedAt = GeneratedColumn<DateTime>(
      'last_played_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, episodeId, durationRemaining, isPlayed, isPlaying, lastPlayedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'played_episodes';
  @override
  VerificationContext validateIntegrity(Insertable<PlayedEpisode> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('episode_id')) {
      context.handle(_episodeIdMeta,
          episodeId.isAcceptableOrUnknown(data['episode_id']!, _episodeIdMeta));
    } else if (isInserting) {
      context.missing(_episodeIdMeta);
    }
    if (data.containsKey('duration_remaining')) {
      context.handle(
          _durationRemainingMeta,
          durationRemaining.isAcceptableOrUnknown(
              data['duration_remaining']!, _durationRemainingMeta));
    } else if (isInserting) {
      context.missing(_durationRemainingMeta);
    }
    if (data.containsKey('is_played')) {
      context.handle(_isPlayedMeta,
          isPlayed.isAcceptableOrUnknown(data['is_played']!, _isPlayedMeta));
    }
    if (data.containsKey('is_playing')) {
      context.handle(_isPlayingMeta,
          isPlaying.isAcceptableOrUnknown(data['is_playing']!, _isPlayingMeta));
    }
    if (data.containsKey('last_played_at')) {
      context.handle(
          _lastPlayedAtMeta,
          lastPlayedAt.isAcceptableOrUnknown(
              data['last_played_at']!, _lastPlayedAtMeta));
    } else if (isInserting) {
      context.missing(_lastPlayedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlayedEpisode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlayedEpisode(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      episodeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_id'])!,
      durationRemaining: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}duration_remaining'])!,
      isPlayed: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_played'])!,
      isPlaying: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_playing'])!,
      lastPlayedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_played_at'])!,
    );
  }

  @override
  $PlayedEpisodesTable createAlias(String alias) {
    return $PlayedEpisodesTable(attachedDatabase, alias);
  }
}

class PlayedEpisode extends DataClass implements Insertable<PlayedEpisode> {
  final int id;
  final int episodeId;
  final int durationRemaining;
  final bool isPlayed;
  final bool isPlaying;
  final DateTime lastPlayedAt;
  const PlayedEpisode(
      {required this.id,
      required this.episodeId,
      required this.durationRemaining,
      required this.isPlayed,
      required this.isPlaying,
      required this.lastPlayedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['episode_id'] = Variable<int>(episodeId);
    map['duration_remaining'] = Variable<int>(durationRemaining);
    map['is_played'] = Variable<bool>(isPlayed);
    map['is_playing'] = Variable<bool>(isPlaying);
    map['last_played_at'] = Variable<DateTime>(lastPlayedAt);
    return map;
  }

  PlayedEpisodesCompanion toCompanion(bool nullToAbsent) {
    return PlayedEpisodesCompanion(
      id: Value(id),
      episodeId: Value(episodeId),
      durationRemaining: Value(durationRemaining),
      isPlayed: Value(isPlayed),
      isPlaying: Value(isPlaying),
      lastPlayedAt: Value(lastPlayedAt),
    );
  }

  factory PlayedEpisode.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlayedEpisode(
      id: serializer.fromJson<int>(json['id']),
      episodeId: serializer.fromJson<int>(json['episodeId']),
      durationRemaining: serializer.fromJson<int>(json['durationRemaining']),
      isPlayed: serializer.fromJson<bool>(json['isPlayed']),
      isPlaying: serializer.fromJson<bool>(json['isPlaying']),
      lastPlayedAt: serializer.fromJson<DateTime>(json['lastPlayedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'episodeId': serializer.toJson<int>(episodeId),
      'durationRemaining': serializer.toJson<int>(durationRemaining),
      'isPlayed': serializer.toJson<bool>(isPlayed),
      'isPlaying': serializer.toJson<bool>(isPlaying),
      'lastPlayedAt': serializer.toJson<DateTime>(lastPlayedAt),
    };
  }

  PlayedEpisode copyWith(
          {int? id,
          int? episodeId,
          int? durationRemaining,
          bool? isPlayed,
          bool? isPlaying,
          DateTime? lastPlayedAt}) =>
      PlayedEpisode(
        id: id ?? this.id,
        episodeId: episodeId ?? this.episodeId,
        durationRemaining: durationRemaining ?? this.durationRemaining,
        isPlayed: isPlayed ?? this.isPlayed,
        isPlaying: isPlaying ?? this.isPlaying,
        lastPlayedAt: lastPlayedAt ?? this.lastPlayedAt,
      );
  PlayedEpisode copyWithCompanion(PlayedEpisodesCompanion data) {
    return PlayedEpisode(
      id: data.id.present ? data.id.value : this.id,
      episodeId: data.episodeId.present ? data.episodeId.value : this.episodeId,
      durationRemaining: data.durationRemaining.present
          ? data.durationRemaining.value
          : this.durationRemaining,
      isPlayed: data.isPlayed.present ? data.isPlayed.value : this.isPlayed,
      isPlaying: data.isPlaying.present ? data.isPlaying.value : this.isPlaying,
      lastPlayedAt: data.lastPlayedAt.present
          ? data.lastPlayedAt.value
          : this.lastPlayedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlayedEpisode(')
          ..write('id: $id, ')
          ..write('episodeId: $episodeId, ')
          ..write('durationRemaining: $durationRemaining, ')
          ..write('isPlayed: $isPlayed, ')
          ..write('isPlaying: $isPlaying, ')
          ..write('lastPlayedAt: $lastPlayedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, episodeId, durationRemaining, isPlayed, isPlaying, lastPlayedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlayedEpisode &&
          other.id == this.id &&
          other.episodeId == this.episodeId &&
          other.durationRemaining == this.durationRemaining &&
          other.isPlayed == this.isPlayed &&
          other.isPlaying == this.isPlaying &&
          other.lastPlayedAt == this.lastPlayedAt);
}

class PlayedEpisodesCompanion extends UpdateCompanion<PlayedEpisode> {
  final Value<int> id;
  final Value<int> episodeId;
  final Value<int> durationRemaining;
  final Value<bool> isPlayed;
  final Value<bool> isPlaying;
  final Value<DateTime> lastPlayedAt;
  const PlayedEpisodesCompanion({
    this.id = const Value.absent(),
    this.episodeId = const Value.absent(),
    this.durationRemaining = const Value.absent(),
    this.isPlayed = const Value.absent(),
    this.isPlaying = const Value.absent(),
    this.lastPlayedAt = const Value.absent(),
  });
  PlayedEpisodesCompanion.insert({
    this.id = const Value.absent(),
    required int episodeId,
    required int durationRemaining,
    this.isPlayed = const Value.absent(),
    this.isPlaying = const Value.absent(),
    required DateTime lastPlayedAt,
  })  : episodeId = Value(episodeId),
        durationRemaining = Value(durationRemaining),
        lastPlayedAt = Value(lastPlayedAt);
  static Insertable<PlayedEpisode> custom({
    Expression<int>? id,
    Expression<int>? episodeId,
    Expression<int>? durationRemaining,
    Expression<bool>? isPlayed,
    Expression<bool>? isPlaying,
    Expression<DateTime>? lastPlayedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (episodeId != null) 'episode_id': episodeId,
      if (durationRemaining != null) 'duration_remaining': durationRemaining,
      if (isPlayed != null) 'is_played': isPlayed,
      if (isPlaying != null) 'is_playing': isPlaying,
      if (lastPlayedAt != null) 'last_played_at': lastPlayedAt,
    });
  }

  PlayedEpisodesCompanion copyWith(
      {Value<int>? id,
      Value<int>? episodeId,
      Value<int>? durationRemaining,
      Value<bool>? isPlayed,
      Value<bool>? isPlaying,
      Value<DateTime>? lastPlayedAt}) {
    return PlayedEpisodesCompanion(
      id: id ?? this.id,
      episodeId: episodeId ?? this.episodeId,
      durationRemaining: durationRemaining ?? this.durationRemaining,
      isPlayed: isPlayed ?? this.isPlayed,
      isPlaying: isPlaying ?? this.isPlaying,
      lastPlayedAt: lastPlayedAt ?? this.lastPlayedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (episodeId.present) {
      map['episode_id'] = Variable<int>(episodeId.value);
    }
    if (durationRemaining.present) {
      map['duration_remaining'] = Variable<int>(durationRemaining.value);
    }
    if (isPlayed.present) {
      map['is_played'] = Variable<bool>(isPlayed.value);
    }
    if (isPlaying.present) {
      map['is_playing'] = Variable<bool>(isPlaying.value);
    }
    if (lastPlayedAt.present) {
      map['last_played_at'] = Variable<DateTime>(lastPlayedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayedEpisodesCompanion(')
          ..write('id: $id, ')
          ..write('episodeId: $episodeId, ')
          ..write('durationRemaining: $durationRemaining, ')
          ..write('isPlayed: $isPlayed, ')
          ..write('isPlaying: $isPlaying, ')
          ..write('lastPlayedAt: $lastPlayedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ShowsTable shows = $ShowsTable(this);
  late final $EpisodesTable episodes = $EpisodesTable(this);
  late final $PlayedEpisodesTable playedEpisodes = $PlayedEpisodesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [shows, episodes, playedEpisodes];
}

typedef $$ShowsTableCreateCompanionBuilder = ShowsCompanion Function({
  Value<int> id,
  required String podcastGuid,
  required String title,
  required String url,
  required String link,
  required String description,
  required String author,
  required String ownerName,
  required String image,
  required String artwork,
  required int lastUpdateTime,
  required bool explicit,
  required int type,
  required String medium,
  required String language,
  required int episodeCount,
  required int crawlErrors,
  required Map<String, dynamic> categories,
  required int dead,
  required String contentType,
  required String generator,
  Value<int> paletteColor,
  required bool isFollowed,
});
typedef $$ShowsTableUpdateCompanionBuilder = ShowsCompanion Function({
  Value<int> id,
  Value<String> podcastGuid,
  Value<String> title,
  Value<String> url,
  Value<String> link,
  Value<String> description,
  Value<String> author,
  Value<String> ownerName,
  Value<String> image,
  Value<String> artwork,
  Value<int> lastUpdateTime,
  Value<bool> explicit,
  Value<int> type,
  Value<String> medium,
  Value<String> language,
  Value<int> episodeCount,
  Value<int> crawlErrors,
  Value<Map<String, dynamic>> categories,
  Value<int> dead,
  Value<String> contentType,
  Value<String> generator,
  Value<int> paletteColor,
  Value<bool> isFollowed,
});

final class $$ShowsTableReferences
    extends BaseReferences<_$AppDatabase, $ShowsTable, Show> {
  $$ShowsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$EpisodesTable, List<Episode>> _episodesRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.episodes,
          aliasName: $_aliasNameGenerator(db.shows.id, db.episodes.showId));

  $$EpisodesTableProcessedTableManager get episodesRefs {
    final manager = $$EpisodesTableTableManager($_db, $_db.episodes)
        .filter((f) => f.showId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_episodesRefsTable($_db));
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

  ColumnFilters<String> get podcastGuid => $composableBuilder(
      column: $table.podcastGuid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ownerName => $composableBuilder(
      column: $table.ownerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get artwork => $composableBuilder(
      column: $table.artwork, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastUpdateTime => $composableBuilder(
      column: $table.lastUpdateTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get explicit => $composableBuilder(
      column: $table.explicit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get medium => $composableBuilder(
      column: $table.medium, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get episodeCount => $composableBuilder(
      column: $table.episodeCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get crawlErrors => $composableBuilder(
      column: $table.crawlErrors, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>, Map<String, dynamic>,
          String>
      get categories => $composableBuilder(
          column: $table.categories,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get dead => $composableBuilder(
      column: $table.dead, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get generator => $composableBuilder(
      column: $table.generator, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => ColumnFilters(column));

  Expression<bool> episodesRefs(
      Expression<bool> Function($$EpisodesTableFilterComposer f) f) {
    final $$EpisodesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.episodes,
        getReferencedColumn: (t) => t.showId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EpisodesTableFilterComposer(
              $db: $db,
              $table: $db.episodes,
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

  ColumnOrderings<String> get podcastGuid => $composableBuilder(
      column: $table.podcastGuid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get link => $composableBuilder(
      column: $table.link, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ownerName => $composableBuilder(
      column: $table.ownerName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get artwork => $composableBuilder(
      column: $table.artwork, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastUpdateTime => $composableBuilder(
      column: $table.lastUpdateTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get explicit => $composableBuilder(
      column: $table.explicit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get medium => $composableBuilder(
      column: $table.medium, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get language => $composableBuilder(
      column: $table.language, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get episodeCount => $composableBuilder(
      column: $table.episodeCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get crawlErrors => $composableBuilder(
      column: $table.crawlErrors, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dead => $composableBuilder(
      column: $table.dead, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get generator => $composableBuilder(
      column: $table.generator, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<String> get podcastGuid => $composableBuilder(
      column: $table.podcastGuid, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get link =>
      $composableBuilder(column: $table.link, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get ownerName =>
      $composableBuilder(column: $table.ownerName, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get artwork =>
      $composableBuilder(column: $table.artwork, builder: (column) => column);

  GeneratedColumn<int> get lastUpdateTime => $composableBuilder(
      column: $table.lastUpdateTime, builder: (column) => column);

  GeneratedColumn<bool> get explicit =>
      $composableBuilder(column: $table.explicit, builder: (column) => column);

  GeneratedColumn<int> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get medium =>
      $composableBuilder(column: $table.medium, builder: (column) => column);

  GeneratedColumn<String> get language =>
      $composableBuilder(column: $table.language, builder: (column) => column);

  GeneratedColumn<int> get episodeCount => $composableBuilder(
      column: $table.episodeCount, builder: (column) => column);

  GeneratedColumn<int> get crawlErrors => $composableBuilder(
      column: $table.crawlErrors, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>, String>
      get categories => $composableBuilder(
          column: $table.categories, builder: (column) => column);

  GeneratedColumn<int> get dead =>
      $composableBuilder(column: $table.dead, builder: (column) => column);

  GeneratedColumn<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => column);

  GeneratedColumn<String> get generator =>
      $composableBuilder(column: $table.generator, builder: (column) => column);

  GeneratedColumn<int> get paletteColor => $composableBuilder(
      column: $table.paletteColor, builder: (column) => column);

  GeneratedColumn<bool> get isFollowed => $composableBuilder(
      column: $table.isFollowed, builder: (column) => column);

  Expression<T> episodesRefs<T extends Object>(
      Expression<T> Function($$EpisodesTableAnnotationComposer a) f) {
    final $$EpisodesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.episodes,
        getReferencedColumn: (t) => t.showId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EpisodesTableAnnotationComposer(
              $db: $db,
              $table: $db.episodes,
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
    PrefetchHooks Function({bool episodesRefs})> {
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
            Value<String> podcastGuid = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> link = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> author = const Value.absent(),
            Value<String> ownerName = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> artwork = const Value.absent(),
            Value<int> lastUpdateTime = const Value.absent(),
            Value<bool> explicit = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<String> medium = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<int> episodeCount = const Value.absent(),
            Value<int> crawlErrors = const Value.absent(),
            Value<Map<String, dynamic>> categories = const Value.absent(),
            Value<int> dead = const Value.absent(),
            Value<String> contentType = const Value.absent(),
            Value<String> generator = const Value.absent(),
            Value<int> paletteColor = const Value.absent(),
            Value<bool> isFollowed = const Value.absent(),
          }) =>
              ShowsCompanion(
            id: id,
            podcastGuid: podcastGuid,
            title: title,
            url: url,
            link: link,
            description: description,
            author: author,
            ownerName: ownerName,
            image: image,
            artwork: artwork,
            lastUpdateTime: lastUpdateTime,
            explicit: explicit,
            type: type,
            medium: medium,
            language: language,
            episodeCount: episodeCount,
            crawlErrors: crawlErrors,
            categories: categories,
            dead: dead,
            contentType: contentType,
            generator: generator,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String podcastGuid,
            required String title,
            required String url,
            required String link,
            required String description,
            required String author,
            required String ownerName,
            required String image,
            required String artwork,
            required int lastUpdateTime,
            required bool explicit,
            required int type,
            required String medium,
            required String language,
            required int episodeCount,
            required int crawlErrors,
            required Map<String, dynamic> categories,
            required int dead,
            required String contentType,
            required String generator,
            Value<int> paletteColor = const Value.absent(),
            required bool isFollowed,
          }) =>
              ShowsCompanion.insert(
            id: id,
            podcastGuid: podcastGuid,
            title: title,
            url: url,
            link: link,
            description: description,
            author: author,
            ownerName: ownerName,
            image: image,
            artwork: artwork,
            lastUpdateTime: lastUpdateTime,
            explicit: explicit,
            type: type,
            medium: medium,
            language: language,
            episodeCount: episodeCount,
            crawlErrors: crawlErrors,
            categories: categories,
            dead: dead,
            contentType: contentType,
            generator: generator,
            paletteColor: paletteColor,
            isFollowed: isFollowed,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ShowsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({episodesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (episodesRefs) db.episodes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (episodesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ShowsTableReferences._episodesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ShowsTableReferences(db, table, p0).episodesRefs,
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
    PrefetchHooks Function({bool episodesRefs})>;
typedef $$EpisodesTableCreateCompanionBuilder = EpisodesCompanion Function({
  Value<int> id,
  required String episodeGuid,
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
  required int showId,
  required String chaptersUrl,
  required String transcriptUrl,
  required String feedGuid,
  required String feedUrl,
  required String feedImage,
  required String feedId,
  required String feedLanguage,
  required String feedDead,
  required String contentType,
  required String medium,
  Value<bool> complete,
  required String socialInteract,
  required String value,
  required String liveItems,
  required String soundbite,
  required int durationRemaining,
  Value<bool> isPlayed,
  Value<bool> isPlaying,
});
typedef $$EpisodesTableUpdateCompanionBuilder = EpisodesCompanion Function({
  Value<int> id,
  Value<String> episodeGuid,
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
  Value<int> showId,
  Value<String> chaptersUrl,
  Value<String> transcriptUrl,
  Value<String> feedGuid,
  Value<String> feedUrl,
  Value<String> feedImage,
  Value<String> feedId,
  Value<String> feedLanguage,
  Value<String> feedDead,
  Value<String> contentType,
  Value<String> medium,
  Value<bool> complete,
  Value<String> socialInteract,
  Value<String> value,
  Value<String> liveItems,
  Value<String> soundbite,
  Value<int> durationRemaining,
  Value<bool> isPlayed,
  Value<bool> isPlaying,
});

final class $$EpisodesTableReferences
    extends BaseReferences<_$AppDatabase, $EpisodesTable, Episode> {
  $$EpisodesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ShowsTable _showIdTable(_$AppDatabase db) => db.shows
      .createAlias($_aliasNameGenerator(db.episodes.showId, db.shows.id));

  $$ShowsTableProcessedTableManager? get showId {
    if ($_item.showId == null) return null;
    final manager = $$ShowsTableTableManager($_db, $_db.shows)
        .filter((f) => f.id($_item.showId!));
    final item = $_typedResult.readTableOrNull(_showIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PlayedEpisodesTable, List<PlayedEpisode>>
      _playedEpisodesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.playedEpisodes,
              aliasName: $_aliasNameGenerator(
                  db.episodes.id, db.playedEpisodes.episodeId));

  $$PlayedEpisodesTableProcessedTableManager get playedEpisodesRefs {
    final manager = $$PlayedEpisodesTableTableManager($_db, $_db.playedEpisodes)
        .filter((f) => f.episodeId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_playedEpisodesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  ColumnFilters<String> get episodeGuid => $composableBuilder(
      column: $table.episodeGuid, builder: (column) => ColumnFilters(column));

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

  ColumnFilters<String> get chaptersUrl => $composableBuilder(
      column: $table.chaptersUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get transcriptUrl => $composableBuilder(
      column: $table.transcriptUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedGuid => $composableBuilder(
      column: $table.feedGuid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedUrl => $composableBuilder(
      column: $table.feedUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedImage => $composableBuilder(
      column: $table.feedImage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedId => $composableBuilder(
      column: $table.feedId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedLanguage => $composableBuilder(
      column: $table.feedLanguage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get feedDead => $composableBuilder(
      column: $table.feedDead, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get medium => $composableBuilder(
      column: $table.medium, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get complete => $composableBuilder(
      column: $table.complete, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get socialInteract => $composableBuilder(
      column: $table.socialInteract,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get liveItems => $composableBuilder(
      column: $table.liveItems, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get soundbite => $composableBuilder(
      column: $table.soundbite, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPlaying => $composableBuilder(
      column: $table.isPlaying, builder: (column) => ColumnFilters(column));

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

  Expression<bool> playedEpisodesRefs(
      Expression<bool> Function($$PlayedEpisodesTableFilterComposer f) f) {
    final $$PlayedEpisodesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.playedEpisodes,
        getReferencedColumn: (t) => t.episodeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PlayedEpisodesTableFilterComposer(
              $db: $db,
              $table: $db.playedEpisodes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  ColumnOrderings<String> get episodeGuid => $composableBuilder(
      column: $table.episodeGuid, builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<String> get chaptersUrl => $composableBuilder(
      column: $table.chaptersUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get transcriptUrl => $composableBuilder(
      column: $table.transcriptUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedGuid => $composableBuilder(
      column: $table.feedGuid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedUrl => $composableBuilder(
      column: $table.feedUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedImage => $composableBuilder(
      column: $table.feedImage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedId => $composableBuilder(
      column: $table.feedId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedLanguage => $composableBuilder(
      column: $table.feedLanguage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get feedDead => $composableBuilder(
      column: $table.feedDead, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get medium => $composableBuilder(
      column: $table.medium, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get complete => $composableBuilder(
      column: $table.complete, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialInteract => $composableBuilder(
      column: $table.socialInteract,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get liveItems => $composableBuilder(
      column: $table.liveItems, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get soundbite => $composableBuilder(
      column: $table.soundbite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPlaying => $composableBuilder(
      column: $table.isPlaying, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<String> get episodeGuid => $composableBuilder(
      column: $table.episodeGuid, builder: (column) => column);

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

  GeneratedColumn<String> get chaptersUrl => $composableBuilder(
      column: $table.chaptersUrl, builder: (column) => column);

  GeneratedColumn<String> get transcriptUrl => $composableBuilder(
      column: $table.transcriptUrl, builder: (column) => column);

  GeneratedColumn<String> get feedGuid =>
      $composableBuilder(column: $table.feedGuid, builder: (column) => column);

  GeneratedColumn<String> get feedUrl =>
      $composableBuilder(column: $table.feedUrl, builder: (column) => column);

  GeneratedColumn<String> get feedImage =>
      $composableBuilder(column: $table.feedImage, builder: (column) => column);

  GeneratedColumn<String> get feedId =>
      $composableBuilder(column: $table.feedId, builder: (column) => column);

  GeneratedColumn<String> get feedLanguage => $composableBuilder(
      column: $table.feedLanguage, builder: (column) => column);

  GeneratedColumn<String> get feedDead =>
      $composableBuilder(column: $table.feedDead, builder: (column) => column);

  GeneratedColumn<String> get contentType => $composableBuilder(
      column: $table.contentType, builder: (column) => column);

  GeneratedColumn<String> get medium =>
      $composableBuilder(column: $table.medium, builder: (column) => column);

  GeneratedColumn<bool> get complete =>
      $composableBuilder(column: $table.complete, builder: (column) => column);

  GeneratedColumn<String> get socialInteract => $composableBuilder(
      column: $table.socialInteract, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get liveItems =>
      $composableBuilder(column: $table.liveItems, builder: (column) => column);

  GeneratedColumn<String> get soundbite =>
      $composableBuilder(column: $table.soundbite, builder: (column) => column);

  GeneratedColumn<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining, builder: (column) => column);

  GeneratedColumn<bool> get isPlayed =>
      $composableBuilder(column: $table.isPlayed, builder: (column) => column);

  GeneratedColumn<bool> get isPlaying =>
      $composableBuilder(column: $table.isPlaying, builder: (column) => column);

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

  Expression<T> playedEpisodesRefs<T extends Object>(
      Expression<T> Function($$PlayedEpisodesTableAnnotationComposer a) f) {
    final $$PlayedEpisodesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.playedEpisodes,
        getReferencedColumn: (t) => t.episodeId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PlayedEpisodesTableAnnotationComposer(
              $db: $db,
              $table: $db.playedEpisodes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (Episode, $$EpisodesTableReferences),
    Episode,
    PrefetchHooks Function({bool showId, bool playedEpisodesRefs})> {
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
            Value<String> episodeGuid = const Value.absent(),
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
            Value<int> showId = const Value.absent(),
            Value<String> chaptersUrl = const Value.absent(),
            Value<String> transcriptUrl = const Value.absent(),
            Value<String> feedGuid = const Value.absent(),
            Value<String> feedUrl = const Value.absent(),
            Value<String> feedImage = const Value.absent(),
            Value<String> feedId = const Value.absent(),
            Value<String> feedLanguage = const Value.absent(),
            Value<String> feedDead = const Value.absent(),
            Value<String> contentType = const Value.absent(),
            Value<String> medium = const Value.absent(),
            Value<bool> complete = const Value.absent(),
            Value<String> socialInteract = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<String> liveItems = const Value.absent(),
            Value<String> soundbite = const Value.absent(),
            Value<int> durationRemaining = const Value.absent(),
            Value<bool> isPlayed = const Value.absent(),
            Value<bool> isPlaying = const Value.absent(),
          }) =>
              EpisodesCompanion(
            id: id,
            episodeGuid: episodeGuid,
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
            showId: showId,
            chaptersUrl: chaptersUrl,
            transcriptUrl: transcriptUrl,
            feedGuid: feedGuid,
            feedUrl: feedUrl,
            feedImage: feedImage,
            feedId: feedId,
            feedLanguage: feedLanguage,
            feedDead: feedDead,
            contentType: contentType,
            medium: medium,
            complete: complete,
            socialInteract: socialInteract,
            value: value,
            liveItems: liveItems,
            soundbite: soundbite,
            durationRemaining: durationRemaining,
            isPlayed: isPlayed,
            isPlaying: isPlaying,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String episodeGuid,
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
            required int showId,
            required String chaptersUrl,
            required String transcriptUrl,
            required String feedGuid,
            required String feedUrl,
            required String feedImage,
            required String feedId,
            required String feedLanguage,
            required String feedDead,
            required String contentType,
            required String medium,
            Value<bool> complete = const Value.absent(),
            required String socialInteract,
            required String value,
            required String liveItems,
            required String soundbite,
            required int durationRemaining,
            Value<bool> isPlayed = const Value.absent(),
            Value<bool> isPlaying = const Value.absent(),
          }) =>
              EpisodesCompanion.insert(
            id: id,
            episodeGuid: episodeGuid,
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
            showId: showId,
            chaptersUrl: chaptersUrl,
            transcriptUrl: transcriptUrl,
            feedGuid: feedGuid,
            feedUrl: feedUrl,
            feedImage: feedImage,
            feedId: feedId,
            feedLanguage: feedLanguage,
            feedDead: feedDead,
            contentType: contentType,
            medium: medium,
            complete: complete,
            socialInteract: socialInteract,
            value: value,
            liveItems: liveItems,
            soundbite: soundbite,
            durationRemaining: durationRemaining,
            isPlayed: isPlayed,
            isPlaying: isPlaying,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$EpisodesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {showId = false, playedEpisodesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (playedEpisodesRefs) db.playedEpisodes
              ],
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
                    referencedTable: $$EpisodesTableReferences._showIdTable(db),
                    referencedColumn:
                        $$EpisodesTableReferences._showIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (playedEpisodesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$EpisodesTableReferences
                            ._playedEpisodesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$EpisodesTableReferences(db, table, p0)
                                .playedEpisodesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.episodeId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (Episode, $$EpisodesTableReferences),
    Episode,
    PrefetchHooks Function({bool showId, bool playedEpisodesRefs})>;
typedef $$PlayedEpisodesTableCreateCompanionBuilder = PlayedEpisodesCompanion
    Function({
  Value<int> id,
  required int episodeId,
  required int durationRemaining,
  Value<bool> isPlayed,
  Value<bool> isPlaying,
  required DateTime lastPlayedAt,
});
typedef $$PlayedEpisodesTableUpdateCompanionBuilder = PlayedEpisodesCompanion
    Function({
  Value<int> id,
  Value<int> episodeId,
  Value<int> durationRemaining,
  Value<bool> isPlayed,
  Value<bool> isPlaying,
  Value<DateTime> lastPlayedAt,
});

final class $$PlayedEpisodesTableReferences
    extends BaseReferences<_$AppDatabase, $PlayedEpisodesTable, PlayedEpisode> {
  $$PlayedEpisodesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $EpisodesTable _episodeIdTable(_$AppDatabase db) =>
      db.episodes.createAlias(
          $_aliasNameGenerator(db.playedEpisodes.episodeId, db.episodes.id));

  $$EpisodesTableProcessedTableManager? get episodeId {
    if ($_item.episodeId == null) return null;
    final manager = $$EpisodesTableTableManager($_db, $_db.episodes)
        .filter((f) => f.id($_item.episodeId!));
    final item = $_typedResult.readTableOrNull(_episodeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PlayedEpisodesTableFilterComposer
    extends Composer<_$AppDatabase, $PlayedEpisodesTable> {
  $$PlayedEpisodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPlaying => $composableBuilder(
      column: $table.isPlaying, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastPlayedAt => $composableBuilder(
      column: $table.lastPlayedAt, builder: (column) => ColumnFilters(column));

  $$EpisodesTableFilterComposer get episodeId {
    final $$EpisodesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.episodeId,
        referencedTable: $db.episodes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EpisodesTableFilterComposer(
              $db: $db,
              $table: $db.episodes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PlayedEpisodesTableOrderingComposer
    extends Composer<_$AppDatabase, $PlayedEpisodesTable> {
  $$PlayedEpisodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPlayed => $composableBuilder(
      column: $table.isPlayed, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPlaying => $composableBuilder(
      column: $table.isPlaying, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastPlayedAt => $composableBuilder(
      column: $table.lastPlayedAt,
      builder: (column) => ColumnOrderings(column));

  $$EpisodesTableOrderingComposer get episodeId {
    final $$EpisodesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.episodeId,
        referencedTable: $db.episodes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EpisodesTableOrderingComposer(
              $db: $db,
              $table: $db.episodes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PlayedEpisodesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlayedEpisodesTable> {
  $$PlayedEpisodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get durationRemaining => $composableBuilder(
      column: $table.durationRemaining, builder: (column) => column);

  GeneratedColumn<bool> get isPlayed =>
      $composableBuilder(column: $table.isPlayed, builder: (column) => column);

  GeneratedColumn<bool> get isPlaying =>
      $composableBuilder(column: $table.isPlaying, builder: (column) => column);

  GeneratedColumn<DateTime> get lastPlayedAt => $composableBuilder(
      column: $table.lastPlayedAt, builder: (column) => column);

  $$EpisodesTableAnnotationComposer get episodeId {
    final $$EpisodesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.episodeId,
        referencedTable: $db.episodes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EpisodesTableAnnotationComposer(
              $db: $db,
              $table: $db.episodes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PlayedEpisodesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PlayedEpisodesTable,
    PlayedEpisode,
    $$PlayedEpisodesTableFilterComposer,
    $$PlayedEpisodesTableOrderingComposer,
    $$PlayedEpisodesTableAnnotationComposer,
    $$PlayedEpisodesTableCreateCompanionBuilder,
    $$PlayedEpisodesTableUpdateCompanionBuilder,
    (PlayedEpisode, $$PlayedEpisodesTableReferences),
    PlayedEpisode,
    PrefetchHooks Function({bool episodeId})> {
  $$PlayedEpisodesTableTableManager(
      _$AppDatabase db, $PlayedEpisodesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlayedEpisodesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlayedEpisodesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlayedEpisodesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> episodeId = const Value.absent(),
            Value<int> durationRemaining = const Value.absent(),
            Value<bool> isPlayed = const Value.absent(),
            Value<bool> isPlaying = const Value.absent(),
            Value<DateTime> lastPlayedAt = const Value.absent(),
          }) =>
              PlayedEpisodesCompanion(
            id: id,
            episodeId: episodeId,
            durationRemaining: durationRemaining,
            isPlayed: isPlayed,
            isPlaying: isPlaying,
            lastPlayedAt: lastPlayedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int episodeId,
            required int durationRemaining,
            Value<bool> isPlayed = const Value.absent(),
            Value<bool> isPlaying = const Value.absent(),
            required DateTime lastPlayedAt,
          }) =>
              PlayedEpisodesCompanion.insert(
            id: id,
            episodeId: episodeId,
            durationRemaining: durationRemaining,
            isPlayed: isPlayed,
            isPlaying: isPlaying,
            lastPlayedAt: lastPlayedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$PlayedEpisodesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({episodeId = false}) {
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
                if (episodeId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.episodeId,
                    referencedTable:
                        $$PlayedEpisodesTableReferences._episodeIdTable(db),
                    referencedColumn:
                        $$PlayedEpisodesTableReferences._episodeIdTable(db).id,
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

typedef $$PlayedEpisodesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PlayedEpisodesTable,
    PlayedEpisode,
    $$PlayedEpisodesTableFilterComposer,
    $$PlayedEpisodesTableOrderingComposer,
    $$PlayedEpisodesTableAnnotationComposer,
    $$PlayedEpisodesTableCreateCompanionBuilder,
    $$PlayedEpisodesTableUpdateCompanionBuilder,
    (PlayedEpisode, $$PlayedEpisodesTableReferences),
    PlayedEpisode,
    PrefetchHooks Function({bool episodeId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ShowsTableTableManager get shows =>
      $$ShowsTableTableManager(_db, _db.shows);
  $$EpisodesTableTableManager get episodes =>
      $$EpisodesTableTableManager(_db, _db.episodes);
  $$PlayedEpisodesTableTableManager get playedEpisodes =>
      $$PlayedEpisodesTableTableManager(_db, _db.playedEpisodes);
}
