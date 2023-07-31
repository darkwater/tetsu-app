// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tetsu_app/apis/anichart/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:tetsu_app/apis/anichart/__generated__/serializers.gql.dart'
    as _i1;

part 'airing.data.gql.g.dart';

abstract class GAlAiringData
    implements Built<GAlAiringData, GAlAiringDataBuilder> {
  GAlAiringData._();

  factory GAlAiringData([Function(GAlAiringDataBuilder b) updates]) =
      _$GAlAiringData;

  static void _initializeBuilder(GAlAiringDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAlAiringData_Page? get Page;
  static Serializer<GAlAiringData> get serializer => _$gAlAiringDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData.serializer,
        json,
      );
}

abstract class GAlAiringData_Page
    implements Built<GAlAiringData_Page, GAlAiringData_PageBuilder> {
  GAlAiringData_Page._();

  factory GAlAiringData_Page([Function(GAlAiringData_PageBuilder b) updates]) =
      _$GAlAiringData_Page;

  static void _initializeBuilder(GAlAiringData_PageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAlAiringData_Page_pageInfo? get pageInfo;
  BuiltList<GAlAiringData_Page_media?>? get media;
  static Serializer<GAlAiringData_Page> get serializer =>
      _$gAlAiringDataPageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_pageInfo
    implements
        Built<GAlAiringData_Page_pageInfo, GAlAiringData_Page_pageInfoBuilder> {
  GAlAiringData_Page_pageInfo._();

  factory GAlAiringData_Page_pageInfo(
          [Function(GAlAiringData_Page_pageInfoBuilder b) updates]) =
      _$GAlAiringData_Page_pageInfo;

  static void _initializeBuilder(GAlAiringData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  int? get perPage;
  static Serializer<GAlAiringData_Page_pageInfo> get serializer =>
      _$gAlAiringDataPagePageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media
    implements
        Built<GAlAiringData_Page_media, GAlAiringData_Page_mediaBuilder> {
  GAlAiringData_Page_media._();

  factory GAlAiringData_Page_media(
          [Function(GAlAiringData_Page_mediaBuilder b) updates]) =
      _$GAlAiringData_Page_media;

  static void _initializeBuilder(GAlAiringData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get idMal;
  String? get description;
  _i2.GMediaSource? get source;
  int? get episodes;
  GAlAiringData_Page_media_title? get title;
  GAlAiringData_Page_media_nextAiringEpisode? get nextAiringEpisode;
  GAlAiringData_Page_media_coverImage? get coverImage;
  GAlAiringData_Page_media_studios? get studios;
  BuiltList<GAlAiringData_Page_media_externalLinks?>? get externalLinks;
  static Serializer<GAlAiringData_Page_media> get serializer =>
      _$gAlAiringDataPageMediaSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_title
    implements
        Built<GAlAiringData_Page_media_title,
            GAlAiringData_Page_media_titleBuilder> {
  GAlAiringData_Page_media_title._();

  factory GAlAiringData_Page_media_title(
          [Function(GAlAiringData_Page_media_titleBuilder b) updates]) =
      _$GAlAiringData_Page_media_title;

  static void _initializeBuilder(GAlAiringData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get romaji;
  String? get english;
  String? get native;
  static Serializer<GAlAiringData_Page_media_title> get serializer =>
      _$gAlAiringDataPageMediaTitleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_title.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_nextAiringEpisode
    implements
        Built<GAlAiringData_Page_media_nextAiringEpisode,
            GAlAiringData_Page_media_nextAiringEpisodeBuilder> {
  GAlAiringData_Page_media_nextAiringEpisode._();

  factory GAlAiringData_Page_media_nextAiringEpisode(
      [Function(GAlAiringData_Page_media_nextAiringEpisodeBuilder b)
          updates]) = _$GAlAiringData_Page_media_nextAiringEpisode;

  static void _initializeBuilder(
          GAlAiringData_Page_media_nextAiringEpisodeBuilder b) =>
      b..G__typename = 'AiringSchedule';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get airingAt;
  int get timeUntilAiring;
  int get episode;
  static Serializer<GAlAiringData_Page_media_nextAiringEpisode>
      get serializer => _$gAlAiringDataPageMediaNextAiringEpisodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_nextAiringEpisode.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_nextAiringEpisode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_nextAiringEpisode.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_coverImage
    implements
        Built<GAlAiringData_Page_media_coverImage,
            GAlAiringData_Page_media_coverImageBuilder> {
  GAlAiringData_Page_media_coverImage._();

  factory GAlAiringData_Page_media_coverImage(
          [Function(GAlAiringData_Page_media_coverImageBuilder b) updates]) =
      _$GAlAiringData_Page_media_coverImage;

  static void _initializeBuilder(
          GAlAiringData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  static Serializer<GAlAiringData_Page_media_coverImage> get serializer =>
      _$gAlAiringDataPageMediaCoverImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_coverImage.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_studios
    implements
        Built<GAlAiringData_Page_media_studios,
            GAlAiringData_Page_media_studiosBuilder> {
  GAlAiringData_Page_media_studios._();

  factory GAlAiringData_Page_media_studios(
          [Function(GAlAiringData_Page_media_studiosBuilder b) updates]) =
      _$GAlAiringData_Page_media_studios;

  static void _initializeBuilder(GAlAiringData_Page_media_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAlAiringData_Page_media_studios_nodes?>? get nodes;
  static Serializer<GAlAiringData_Page_media_studios> get serializer =>
      _$gAlAiringDataPageMediaStudiosSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_studios.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_studios? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_studios.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_studios_nodes
    implements
        Built<GAlAiringData_Page_media_studios_nodes,
            GAlAiringData_Page_media_studios_nodesBuilder> {
  GAlAiringData_Page_media_studios_nodes._();

  factory GAlAiringData_Page_media_studios_nodes(
          [Function(GAlAiringData_Page_media_studios_nodesBuilder b) updates]) =
      _$GAlAiringData_Page_media_studios_nodes;

  static void _initializeBuilder(
          GAlAiringData_Page_media_studios_nodesBuilder b) =>
      b..G__typename = 'Studio';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  bool get isAnimationStudio;
  static Serializer<GAlAiringData_Page_media_studios_nodes> get serializer =>
      _$gAlAiringDataPageMediaStudiosNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_studios_nodes.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_studios_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_studios_nodes.serializer,
        json,
      );
}

abstract class GAlAiringData_Page_media_externalLinks
    implements
        Built<GAlAiringData_Page_media_externalLinks,
            GAlAiringData_Page_media_externalLinksBuilder> {
  GAlAiringData_Page_media_externalLinks._();

  factory GAlAiringData_Page_media_externalLinks(
          [Function(GAlAiringData_Page_media_externalLinksBuilder b) updates]) =
      _$GAlAiringData_Page_media_externalLinks;

  static void _initializeBuilder(
          GAlAiringData_Page_media_externalLinksBuilder b) =>
      b..G__typename = 'MediaExternalLink';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get url;
  String get site;
  _i2.GExternalLinkType? get type;
  String? get notes;
  static Serializer<GAlAiringData_Page_media_externalLinks> get serializer =>
      _$gAlAiringDataPageMediaExternalLinksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAlAiringData_Page_media_externalLinks.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAlAiringData_Page_media_externalLinks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAlAiringData_Page_media_externalLinks.serializer,
        json,
      );
}
