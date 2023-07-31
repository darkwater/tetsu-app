// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airing.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAlAiringData> _$gAlAiringDataSerializer =
    new _$GAlAiringDataSerializer();
Serializer<GAlAiringData_Page> _$gAlAiringDataPageSerializer =
    new _$GAlAiringData_PageSerializer();
Serializer<GAlAiringData_Page_pageInfo> _$gAlAiringDataPagePageInfoSerializer =
    new _$GAlAiringData_Page_pageInfoSerializer();
Serializer<GAlAiringData_Page_media> _$gAlAiringDataPageMediaSerializer =
    new _$GAlAiringData_Page_mediaSerializer();
Serializer<GAlAiringData_Page_media_title>
    _$gAlAiringDataPageMediaTitleSerializer =
    new _$GAlAiringData_Page_media_titleSerializer();
Serializer<GAlAiringData_Page_media_nextAiringEpisode>
    _$gAlAiringDataPageMediaNextAiringEpisodeSerializer =
    new _$GAlAiringData_Page_media_nextAiringEpisodeSerializer();
Serializer<GAlAiringData_Page_media_coverImage>
    _$gAlAiringDataPageMediaCoverImageSerializer =
    new _$GAlAiringData_Page_media_coverImageSerializer();
Serializer<GAlAiringData_Page_media_studios>
    _$gAlAiringDataPageMediaStudiosSerializer =
    new _$GAlAiringData_Page_media_studiosSerializer();
Serializer<GAlAiringData_Page_media_studios_nodes>
    _$gAlAiringDataPageMediaStudiosNodesSerializer =
    new _$GAlAiringData_Page_media_studios_nodesSerializer();
Serializer<GAlAiringData_Page_media_externalLinks>
    _$gAlAiringDataPageMediaExternalLinksSerializer =
    new _$GAlAiringData_Page_media_externalLinksSerializer();

class _$GAlAiringDataSerializer implements StructuredSerializer<GAlAiringData> {
  @override
  final Iterable<Type> types = const [GAlAiringData, _$GAlAiringData];
  @override
  final String wireName = 'GAlAiringData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAlAiringData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAlAiringData_Page)));
    }
    return result;
  }

  @override
  GAlAiringData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAlAiringData_Page))!
              as GAlAiringData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_PageSerializer
    implements StructuredSerializer<GAlAiringData_Page> {
  @override
  final Iterable<Type> types = const [GAlAiringData_Page, _$GAlAiringData_Page];
  @override
  final String wireName = 'GAlAiringData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAlAiringData_Page_pageInfo)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GAlAiringData_Page_media)])));
    }
    return result;
  }

  @override
  GAlAiringData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_PageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAlAiringData_Page_pageInfo))!
              as GAlAiringData_Page_pageInfo);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GAlAiringData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_pageInfoSerializer
    implements StructuredSerializer<GAlAiringData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_pageInfo,
    _$GAlAiringData_Page_pageInfo
  ];
  @override
  final String wireName = 'GAlAiringData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('lastPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GAlAiringData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_mediaSerializer
    implements StructuredSerializer<GAlAiringData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media,
    _$GAlAiringData_Page_media
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.idMal;
    if (value != null) {
      result
        ..add('idMal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaSource)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAlAiringData_Page_media_title)));
    }
    value = object.nextAiringEpisode;
    if (value != null) {
      result
        ..add('nextAiringEpisode')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GAlAiringData_Page_media_nextAiringEpisode)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GAlAiringData_Page_media_coverImage)));
    }
    value = object.studios;
    if (value != null) {
      result
        ..add('studios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAlAiringData_Page_media_studios)));
    }
    value = object.externalLinks;
    if (value != null) {
      result
        ..add('externalLinks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GAlAiringData_Page_media_externalLinks)
            ])));
    }
    return result;
  }

  @override
  GAlAiringData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_mediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'idMal':
          result.idMal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'source':
          result.source = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaSource))
              as _i2.GMediaSource?;
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAlAiringData_Page_media_title))!
              as GAlAiringData_Page_media_title);
          break;
        case 'nextAiringEpisode':
          result.nextAiringEpisode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAlAiringData_Page_media_nextAiringEpisode))!
              as GAlAiringData_Page_media_nextAiringEpisode);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAlAiringData_Page_media_coverImage))!
              as GAlAiringData_Page_media_coverImage);
          break;
        case 'studios':
          result.studios.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GAlAiringData_Page_media_studios))!
              as GAlAiringData_Page_media_studios);
          break;
        case 'externalLinks':
          result.externalLinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GAlAiringData_Page_media_externalLinks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_titleSerializer
    implements StructuredSerializer<GAlAiringData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_title,
    _$GAlAiringData_Page_media_title
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.romaji;
    if (value != null) {
      result
        ..add('romaji')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.native;
    if (value != null) {
      result
        ..add('native')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAlAiringData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'romaji':
          result.romaji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'native':
          result.native = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_nextAiringEpisodeSerializer
    implements
        StructuredSerializer<GAlAiringData_Page_media_nextAiringEpisode> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_nextAiringEpisode,
    _$GAlAiringData_Page_media_nextAiringEpisode
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_nextAiringEpisode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAlAiringData_Page_media_nextAiringEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GAlAiringData_Page_media_nextAiringEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_nextAiringEpisodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_coverImageSerializer
    implements StructuredSerializer<GAlAiringData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_coverImage,
    _$GAlAiringData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAlAiringData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_coverImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_studiosSerializer
    implements StructuredSerializer<GAlAiringData_Page_media_studios> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_studios,
    _$GAlAiringData_Page_media_studios
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_studios';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media_studios object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GAlAiringData_Page_media_studios_nodes)
            ])));
    }
    return result;
  }

  @override
  GAlAiringData_Page_media_studios deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_studiosBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GAlAiringData_Page_media_studios_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_studios_nodesSerializer
    implements StructuredSerializer<GAlAiringData_Page_media_studios_nodes> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_studios_nodes,
    _$GAlAiringData_Page_media_studios_nodes
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_studios_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media_studios_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isAnimationStudio',
      serializers.serialize(object.isAnimationStudio,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GAlAiringData_Page_media_studios_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_studios_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isAnimationStudio':
          result.isAnimationStudio = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData_Page_media_externalLinksSerializer
    implements StructuredSerializer<GAlAiringData_Page_media_externalLinks> {
  @override
  final Iterable<Type> types = const [
    GAlAiringData_Page_media_externalLinks,
    _$GAlAiringData_Page_media_externalLinks
  ];
  @override
  final String wireName = 'GAlAiringData_Page_media_externalLinks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAlAiringData_Page_media_externalLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'site',
      serializers.serialize(object.site, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GExternalLinkType)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAlAiringData_Page_media_externalLinks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringData_Page_media_externalLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GExternalLinkType))
              as _i2.GExternalLinkType?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringData extends GAlAiringData {
  @override
  final String G__typename;
  @override
  final GAlAiringData_Page? Page;

  factory _$GAlAiringData([void Function(GAlAiringDataBuilder)? updates]) =>
      (new GAlAiringDataBuilder()..update(updates))._build();

  _$GAlAiringData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData', 'G__typename');
  }

  @override
  GAlAiringData rebuild(void Function(GAlAiringDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringDataBuilder toBuilder() => new GAlAiringDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GAlAiringDataBuilder
    implements Builder<GAlAiringData, GAlAiringDataBuilder> {
  _$GAlAiringData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAlAiringData_PageBuilder? _Page;
  GAlAiringData_PageBuilder get Page =>
      _$this._Page ??= new GAlAiringData_PageBuilder();
  set Page(GAlAiringData_PageBuilder? Page) => _$this._Page = Page;

  GAlAiringDataBuilder() {
    GAlAiringData._initializeBuilder(this);
  }

  GAlAiringDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData;
  }

  @override
  void update(void Function(GAlAiringDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData build() => _build();

  _$GAlAiringData _build() {
    _$GAlAiringData _$result;
    try {
      _$result = _$v ??
          new _$GAlAiringData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAlAiringData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAlAiringData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page extends GAlAiringData_Page {
  @override
  final String G__typename;
  @override
  final GAlAiringData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GAlAiringData_Page_media?>? media;

  factory _$GAlAiringData_Page(
          [void Function(GAlAiringData_PageBuilder)? updates]) =>
      (new GAlAiringData_PageBuilder()..update(updates))._build();

  _$GAlAiringData_Page._({required this.G__typename, this.pageInfo, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page', 'G__typename');
  }

  @override
  GAlAiringData_Page rebuild(
          void Function(GAlAiringData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_PageBuilder toBuilder() =>
      new GAlAiringData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('media', media))
        .toString();
  }
}

class GAlAiringData_PageBuilder
    implements Builder<GAlAiringData_Page, GAlAiringData_PageBuilder> {
  _$GAlAiringData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GAlAiringData_Page_pageInfoBuilder? _pageInfo;
  GAlAiringData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GAlAiringData_Page_pageInfoBuilder();
  set pageInfo(GAlAiringData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GAlAiringData_Page_media?>? _media;
  ListBuilder<GAlAiringData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GAlAiringData_Page_media?>();
  set media(ListBuilder<GAlAiringData_Page_media?>? media) =>
      _$this._media = media;

  GAlAiringData_PageBuilder() {
    GAlAiringData_Page._initializeBuilder(this);
  }

  GAlAiringData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page;
  }

  @override
  void update(void Function(GAlAiringData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page build() => _build();

  _$GAlAiringData_Page _build() {
    _$GAlAiringData_Page _$result;
    try {
      _$result = _$v ??
          new _$GAlAiringData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAlAiringData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAlAiringData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_pageInfo extends GAlAiringData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final bool? hasNextPage;
  @override
  final int? perPage;

  factory _$GAlAiringData_Page_pageInfo(
          [void Function(GAlAiringData_Page_pageInfoBuilder)? updates]) =>
      (new GAlAiringData_Page_pageInfoBuilder()..update(updates))._build();

  _$GAlAiringData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.currentPage,
      this.lastPage,
      this.hasNextPage,
      this.perPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_pageInfo', 'G__typename');
  }

  @override
  GAlAiringData_Page_pageInfo rebuild(
          void Function(GAlAiringData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_pageInfoBuilder toBuilder() =>
      new GAlAiringData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        hasNextPage == other.hasNextPage &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage)
          ..add('perPage', perPage))
        .toString();
  }
}

class GAlAiringData_Page_pageInfoBuilder
    implements
        Builder<GAlAiringData_Page_pageInfo,
            GAlAiringData_Page_pageInfoBuilder> {
  _$GAlAiringData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GAlAiringData_Page_pageInfoBuilder() {
    GAlAiringData_Page_pageInfo._initializeBuilder(this);
  }

  GAlAiringData_Page_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _hasNextPage = $v.hasNextPage;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_pageInfo;
  }

  @override
  void update(void Function(GAlAiringData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_pageInfo build() => _build();

  _$GAlAiringData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAlAiringData_Page_pageInfo', 'G__typename'),
            total: total,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage,
            perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media extends GAlAiringData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? idMal;
  @override
  final String? description;
  @override
  final _i2.GMediaSource? source;
  @override
  final int? episodes;
  @override
  final GAlAiringData_Page_media_title? title;
  @override
  final GAlAiringData_Page_media_nextAiringEpisode? nextAiringEpisode;
  @override
  final GAlAiringData_Page_media_coverImage? coverImage;
  @override
  final GAlAiringData_Page_media_studios? studios;
  @override
  final BuiltList<GAlAiringData_Page_media_externalLinks?>? externalLinks;

  factory _$GAlAiringData_Page_media(
          [void Function(GAlAiringData_Page_mediaBuilder)? updates]) =>
      (new GAlAiringData_Page_mediaBuilder()..update(updates))._build();

  _$GAlAiringData_Page_media._(
      {required this.G__typename,
      required this.id,
      this.idMal,
      this.description,
      this.source,
      this.episodes,
      this.title,
      this.nextAiringEpisode,
      this.coverImage,
      this.studios,
      this.externalLinks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAlAiringData_Page_media', 'id');
  }

  @override
  GAlAiringData_Page_media rebuild(
          void Function(GAlAiringData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_mediaBuilder toBuilder() =>
      new GAlAiringData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        idMal == other.idMal &&
        description == other.description &&
        source == other.source &&
        episodes == other.episodes &&
        title == other.title &&
        nextAiringEpisode == other.nextAiringEpisode &&
        coverImage == other.coverImage &&
        studios == other.studios &&
        externalLinks == other.externalLinks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, idMal.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, nextAiringEpisode.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, studios.hashCode);
    _$hash = $jc(_$hash, externalLinks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('idMal', idMal)
          ..add('description', description)
          ..add('source', source)
          ..add('episodes', episodes)
          ..add('title', title)
          ..add('nextAiringEpisode', nextAiringEpisode)
          ..add('coverImage', coverImage)
          ..add('studios', studios)
          ..add('externalLinks', externalLinks))
        .toString();
  }
}

class GAlAiringData_Page_mediaBuilder
    implements
        Builder<GAlAiringData_Page_media, GAlAiringData_Page_mediaBuilder> {
  _$GAlAiringData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _idMal;
  int? get idMal => _$this._idMal;
  set idMal(int? idMal) => _$this._idMal = idMal;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.GMediaSource? _source;
  _i2.GMediaSource? get source => _$this._source;
  set source(_i2.GMediaSource? source) => _$this._source = source;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  GAlAiringData_Page_media_titleBuilder? _title;
  GAlAiringData_Page_media_titleBuilder get title =>
      _$this._title ??= new GAlAiringData_Page_media_titleBuilder();
  set title(GAlAiringData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GAlAiringData_Page_media_nextAiringEpisodeBuilder? _nextAiringEpisode;
  GAlAiringData_Page_media_nextAiringEpisodeBuilder get nextAiringEpisode =>
      _$this._nextAiringEpisode ??=
          new GAlAiringData_Page_media_nextAiringEpisodeBuilder();
  set nextAiringEpisode(
          GAlAiringData_Page_media_nextAiringEpisodeBuilder?
              nextAiringEpisode) =>
      _$this._nextAiringEpisode = nextAiringEpisode;

  GAlAiringData_Page_media_coverImageBuilder? _coverImage;
  GAlAiringData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GAlAiringData_Page_media_coverImageBuilder();
  set coverImage(GAlAiringData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GAlAiringData_Page_media_studiosBuilder? _studios;
  GAlAiringData_Page_media_studiosBuilder get studios =>
      _$this._studios ??= new GAlAiringData_Page_media_studiosBuilder();
  set studios(GAlAiringData_Page_media_studiosBuilder? studios) =>
      _$this._studios = studios;

  ListBuilder<GAlAiringData_Page_media_externalLinks?>? _externalLinks;
  ListBuilder<GAlAiringData_Page_media_externalLinks?> get externalLinks =>
      _$this._externalLinks ??=
          new ListBuilder<GAlAiringData_Page_media_externalLinks?>();
  set externalLinks(
          ListBuilder<GAlAiringData_Page_media_externalLinks?>?
              externalLinks) =>
      _$this._externalLinks = externalLinks;

  GAlAiringData_Page_mediaBuilder() {
    GAlAiringData_Page_media._initializeBuilder(this);
  }

  GAlAiringData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _idMal = $v.idMal;
      _description = $v.description;
      _source = $v.source;
      _episodes = $v.episodes;
      _title = $v.title?.toBuilder();
      _nextAiringEpisode = $v.nextAiringEpisode?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _studios = $v.studios?.toBuilder();
      _externalLinks = $v.externalLinks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media;
  }

  @override
  void update(void Function(GAlAiringData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media build() => _build();

  _$GAlAiringData_Page_media _build() {
    _$GAlAiringData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GAlAiringData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAlAiringData_Page_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GAlAiringData_Page_media', 'id'),
              idMal: idMal,
              description: description,
              source: source,
              episodes: episodes,
              title: _title?.build(),
              nextAiringEpisode: _nextAiringEpisode?.build(),
              coverImage: _coverImage?.build(),
              studios: _studios?.build(),
              externalLinks: _externalLinks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'nextAiringEpisode';
        _nextAiringEpisode?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'studios';
        _studios?.build();
        _$failedField = 'externalLinks';
        _externalLinks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAlAiringData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_title extends GAlAiringData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? romaji;
  @override
  final String? english;
  @override
  final String? native;

  factory _$GAlAiringData_Page_media_title(
          [void Function(GAlAiringData_Page_media_titleBuilder)? updates]) =>
      (new GAlAiringData_Page_media_titleBuilder()..update(updates))._build();

  _$GAlAiringData_Page_media_title._(
      {required this.G__typename, this.romaji, this.english, this.native})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media_title', 'G__typename');
  }

  @override
  GAlAiringData_Page_media_title rebuild(
          void Function(GAlAiringData_Page_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_titleBuilder toBuilder() =>
      new GAlAiringData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_title &&
        G__typename == other.G__typename &&
        romaji == other.romaji &&
        english == other.english &&
        native == other.native;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, romaji.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, native.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('romaji', romaji)
          ..add('english', english)
          ..add('native', native))
        .toString();
  }
}

class GAlAiringData_Page_media_titleBuilder
    implements
        Builder<GAlAiringData_Page_media_title,
            GAlAiringData_Page_media_titleBuilder> {
  _$GAlAiringData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _romaji;
  String? get romaji => _$this._romaji;
  set romaji(String? romaji) => _$this._romaji = romaji;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _native;
  String? get native => _$this._native;
  set native(String? native) => _$this._native = native;

  GAlAiringData_Page_media_titleBuilder() {
    GAlAiringData_Page_media_title._initializeBuilder(this);
  }

  GAlAiringData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _romaji = $v.romaji;
      _english = $v.english;
      _native = $v.native;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_title;
  }

  @override
  void update(void Function(GAlAiringData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_title build() => _build();

  _$GAlAiringData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAlAiringData_Page_media_title', 'G__typename'),
            romaji: romaji,
            english: english,
            native: native);
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_nextAiringEpisode
    extends GAlAiringData_Page_media_nextAiringEpisode {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GAlAiringData_Page_media_nextAiringEpisode(
          [void Function(GAlAiringData_Page_media_nextAiringEpisodeBuilder)?
              updates]) =>
      (new GAlAiringData_Page_media_nextAiringEpisodeBuilder()..update(updates))
          ._build();

  _$GAlAiringData_Page_media_nextAiringEpisode._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GAlAiringData_Page_media_nextAiringEpisode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        airingAt, r'GAlAiringData_Page_media_nextAiringEpisode', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(timeUntilAiring,
        r'GAlAiringData_Page_media_nextAiringEpisode', 'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GAlAiringData_Page_media_nextAiringEpisode', 'episode');
  }

  @override
  GAlAiringData_Page_media_nextAiringEpisode rebuild(
          void Function(GAlAiringData_Page_media_nextAiringEpisodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_nextAiringEpisodeBuilder toBuilder() =>
      new GAlAiringData_Page_media_nextAiringEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_nextAiringEpisode &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAlAiringData_Page_media_nextAiringEpisode')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GAlAiringData_Page_media_nextAiringEpisodeBuilder
    implements
        Builder<GAlAiringData_Page_media_nextAiringEpisode,
            GAlAiringData_Page_media_nextAiringEpisodeBuilder> {
  _$GAlAiringData_Page_media_nextAiringEpisode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GAlAiringData_Page_media_nextAiringEpisodeBuilder() {
    GAlAiringData_Page_media_nextAiringEpisode._initializeBuilder(this);
  }

  GAlAiringData_Page_media_nextAiringEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_nextAiringEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_nextAiringEpisode;
  }

  @override
  void update(
      void Function(GAlAiringData_Page_media_nextAiringEpisodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_nextAiringEpisode build() => _build();

  _$GAlAiringData_Page_media_nextAiringEpisode _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_media_nextAiringEpisode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAlAiringData_Page_media_nextAiringEpisode', 'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(airingAt,
                r'GAlAiringData_Page_media_nextAiringEpisode', 'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GAlAiringData_Page_media_nextAiringEpisode',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(episode,
                r'GAlAiringData_Page_media_nextAiringEpisode', 'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_coverImage
    extends GAlAiringData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GAlAiringData_Page_media_coverImage(
          [void Function(GAlAiringData_Page_media_coverImageBuilder)?
              updates]) =>
      (new GAlAiringData_Page_media_coverImageBuilder()..update(updates))
          ._build();

  _$GAlAiringData_Page_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media_coverImage', 'G__typename');
  }

  @override
  GAlAiringData_Page_media_coverImage rebuild(
          void Function(GAlAiringData_Page_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_coverImageBuilder toBuilder() =>
      new GAlAiringData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GAlAiringData_Page_media_coverImageBuilder
    implements
        Builder<GAlAiringData_Page_media_coverImage,
            GAlAiringData_Page_media_coverImageBuilder> {
  _$GAlAiringData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GAlAiringData_Page_media_coverImageBuilder() {
    GAlAiringData_Page_media_coverImage._initializeBuilder(this);
  }

  GAlAiringData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_coverImage;
  }

  @override
  void update(
      void Function(GAlAiringData_Page_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_coverImage build() => _build();

  _$GAlAiringData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAlAiringData_Page_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_studios
    extends GAlAiringData_Page_media_studios {
  @override
  final String G__typename;
  @override
  final BuiltList<GAlAiringData_Page_media_studios_nodes?>? nodes;

  factory _$GAlAiringData_Page_media_studios(
          [void Function(GAlAiringData_Page_media_studiosBuilder)? updates]) =>
      (new GAlAiringData_Page_media_studiosBuilder()..update(updates))._build();

  _$GAlAiringData_Page_media_studios._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media_studios', 'G__typename');
  }

  @override
  GAlAiringData_Page_media_studios rebuild(
          void Function(GAlAiringData_Page_media_studiosBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_studiosBuilder toBuilder() =>
      new GAlAiringData_Page_media_studiosBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_studios &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringData_Page_media_studios')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GAlAiringData_Page_media_studiosBuilder
    implements
        Builder<GAlAiringData_Page_media_studios,
            GAlAiringData_Page_media_studiosBuilder> {
  _$GAlAiringData_Page_media_studios? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAlAiringData_Page_media_studios_nodes?>? _nodes;
  ListBuilder<GAlAiringData_Page_media_studios_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GAlAiringData_Page_media_studios_nodes?>();
  set nodes(ListBuilder<GAlAiringData_Page_media_studios_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GAlAiringData_Page_media_studiosBuilder() {
    GAlAiringData_Page_media_studios._initializeBuilder(this);
  }

  GAlAiringData_Page_media_studiosBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_studios other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_studios;
  }

  @override
  void update(void Function(GAlAiringData_Page_media_studiosBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_studios build() => _build();

  _$GAlAiringData_Page_media_studios _build() {
    _$GAlAiringData_Page_media_studios _$result;
    try {
      _$result = _$v ??
          new _$GAlAiringData_Page_media_studios._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GAlAiringData_Page_media_studios', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAlAiringData_Page_media_studios', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_studios_nodes
    extends GAlAiringData_Page_media_studios_nodes {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final bool isAnimationStudio;

  factory _$GAlAiringData_Page_media_studios_nodes(
          [void Function(GAlAiringData_Page_media_studios_nodesBuilder)?
              updates]) =>
      (new GAlAiringData_Page_media_studios_nodesBuilder()..update(updates))
          ._build();

  _$GAlAiringData_Page_media_studios_nodes._(
      {required this.G__typename,
      required this.name,
      required this.isAnimationStudio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media_studios_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GAlAiringData_Page_media_studios_nodes', 'name');
    BuiltValueNullFieldError.checkNotNull(isAnimationStudio,
        r'GAlAiringData_Page_media_studios_nodes', 'isAnimationStudio');
  }

  @override
  GAlAiringData_Page_media_studios_nodes rebuild(
          void Function(GAlAiringData_Page_media_studios_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_studios_nodesBuilder toBuilder() =>
      new GAlAiringData_Page_media_studios_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_studios_nodes &&
        G__typename == other.G__typename &&
        name == other.name &&
        isAnimationStudio == other.isAnimationStudio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isAnimationStudio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAlAiringData_Page_media_studios_nodes')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('isAnimationStudio', isAnimationStudio))
        .toString();
  }
}

class GAlAiringData_Page_media_studios_nodesBuilder
    implements
        Builder<GAlAiringData_Page_media_studios_nodes,
            GAlAiringData_Page_media_studios_nodesBuilder> {
  _$GAlAiringData_Page_media_studios_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isAnimationStudio;
  bool? get isAnimationStudio => _$this._isAnimationStudio;
  set isAnimationStudio(bool? isAnimationStudio) =>
      _$this._isAnimationStudio = isAnimationStudio;

  GAlAiringData_Page_media_studios_nodesBuilder() {
    GAlAiringData_Page_media_studios_nodes._initializeBuilder(this);
  }

  GAlAiringData_Page_media_studios_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _isAnimationStudio = $v.isAnimationStudio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_studios_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_studios_nodes;
  }

  @override
  void update(
      void Function(GAlAiringData_Page_media_studios_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_studios_nodes build() => _build();

  _$GAlAiringData_Page_media_studios_nodes _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_media_studios_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAlAiringData_Page_media_studios_nodes', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAlAiringData_Page_media_studios_nodes', 'name'),
            isAnimationStudio: BuiltValueNullFieldError.checkNotNull(
                isAnimationStudio,
                r'GAlAiringData_Page_media_studios_nodes',
                'isAnimationStudio'));
    replace(_$result);
    return _$result;
  }
}

class _$GAlAiringData_Page_media_externalLinks
    extends GAlAiringData_Page_media_externalLinks {
  @override
  final String G__typename;
  @override
  final String? url;
  @override
  final String site;
  @override
  final _i2.GExternalLinkType? type;
  @override
  final String? notes;

  factory _$GAlAiringData_Page_media_externalLinks(
          [void Function(GAlAiringData_Page_media_externalLinksBuilder)?
              updates]) =>
      (new GAlAiringData_Page_media_externalLinksBuilder()..update(updates))
          ._build();

  _$GAlAiringData_Page_media_externalLinks._(
      {required this.G__typename,
      this.url,
      required this.site,
      this.type,
      this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAlAiringData_Page_media_externalLinks', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        site, r'GAlAiringData_Page_media_externalLinks', 'site');
  }

  @override
  GAlAiringData_Page_media_externalLinks rebuild(
          void Function(GAlAiringData_Page_media_externalLinksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringData_Page_media_externalLinksBuilder toBuilder() =>
      new GAlAiringData_Page_media_externalLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringData_Page_media_externalLinks &&
        G__typename == other.G__typename &&
        url == other.url &&
        site == other.site &&
        type == other.type &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, site.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GAlAiringData_Page_media_externalLinks')
          ..add('G__typename', G__typename)
          ..add('url', url)
          ..add('site', site)
          ..add('type', type)
          ..add('notes', notes))
        .toString();
  }
}

class GAlAiringData_Page_media_externalLinksBuilder
    implements
        Builder<GAlAiringData_Page_media_externalLinks,
            GAlAiringData_Page_media_externalLinksBuilder> {
  _$GAlAiringData_Page_media_externalLinks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _site;
  String? get site => _$this._site;
  set site(String? site) => _$this._site = site;

  _i2.GExternalLinkType? _type;
  _i2.GExternalLinkType? get type => _$this._type;
  set type(_i2.GExternalLinkType? type) => _$this._type = type;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  GAlAiringData_Page_media_externalLinksBuilder() {
    GAlAiringData_Page_media_externalLinks._initializeBuilder(this);
  }

  GAlAiringData_Page_media_externalLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _url = $v.url;
      _site = $v.site;
      _type = $v.type;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringData_Page_media_externalLinks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringData_Page_media_externalLinks;
  }

  @override
  void update(
      void Function(GAlAiringData_Page_media_externalLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringData_Page_media_externalLinks build() => _build();

  _$GAlAiringData_Page_media_externalLinks _build() {
    final _$result = _$v ??
        new _$GAlAiringData_Page_media_externalLinks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GAlAiringData_Page_media_externalLinks', 'G__typename'),
            url: url,
            site: BuiltValueNullFieldError.checkNotNull(
                site, r'GAlAiringData_Page_media_externalLinks', 'site'),
            type: type,
            notes: notes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
