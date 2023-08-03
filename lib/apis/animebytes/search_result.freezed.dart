// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimebytesSearchResponse _$AnimebytesSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _AnimebytesSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$AnimebytesSearchResponse {
  int get results => throw _privateConstructorUsedError;
  Pagination get pagination => throw _privateConstructorUsedError;
  int get matches => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<AnimebytesSearchResult> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimebytesSearchResponseCopyWith<AnimebytesSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimebytesSearchResponseCopyWith<$Res> {
  factory $AnimebytesSearchResponseCopyWith(AnimebytesSearchResponse value,
          $Res Function(AnimebytesSearchResponse) then) =
      _$AnimebytesSearchResponseCopyWithImpl<$Res, AnimebytesSearchResponse>;
  @useResult
  $Res call(
      {int results,
      Pagination pagination,
      int matches,
      @JsonKey(defaultValue: []) List<AnimebytesSearchResult> groups});

  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AnimebytesSearchResponseCopyWithImpl<$Res,
        $Val extends AnimebytesSearchResponse>
    implements $AnimebytesSearchResponseCopyWith<$Res> {
  _$AnimebytesSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? pagination = null,
    Object? matches = null,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as int,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesSearchResult>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimebytesSearchResponseCopyWith<$Res>
    implements $AnimebytesSearchResponseCopyWith<$Res> {
  factory _$$_AnimebytesSearchResponseCopyWith(
          _$_AnimebytesSearchResponse value,
          $Res Function(_$_AnimebytesSearchResponse) then) =
      __$$_AnimebytesSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int results,
      Pagination pagination,
      int matches,
      @JsonKey(defaultValue: []) List<AnimebytesSearchResult> groups});

  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_AnimebytesSearchResponseCopyWithImpl<$Res>
    extends _$AnimebytesSearchResponseCopyWithImpl<$Res,
        _$_AnimebytesSearchResponse>
    implements _$$_AnimebytesSearchResponseCopyWith<$Res> {
  __$$_AnimebytesSearchResponseCopyWithImpl(_$_AnimebytesSearchResponse _value,
      $Res Function(_$_AnimebytesSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? pagination = null,
    Object? matches = null,
    Object? groups = null,
  }) {
    return _then(_$_AnimebytesSearchResponse(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as int,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesSearchResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_AnimebytesSearchResponse extends _AnimebytesSearchResponse {
  const _$_AnimebytesSearchResponse(
      {required this.results,
      required this.pagination,
      required this.matches,
      @JsonKey(defaultValue: [])
      required final List<AnimebytesSearchResult> groups})
      : _groups = groups,
        super._();

  factory _$_AnimebytesSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimebytesSearchResponseFromJson(json);

  @override
  final int results;
  @override
  final Pagination pagination;
  @override
  final int matches;
  final List<AnimebytesSearchResult> _groups;
  @override
  @JsonKey(defaultValue: [])
  List<AnimebytesSearchResult> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'AnimebytesSearchResponse(results: $results, pagination: $pagination, matches: $matches, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimebytesSearchResponse &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.matches, matches) || other.matches == matches) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, results, pagination, matches,
      const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimebytesSearchResponseCopyWith<_$_AnimebytesSearchResponse>
      get copyWith => __$$_AnimebytesSearchResponseCopyWithImpl<
          _$_AnimebytesSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimebytesSearchResponseToJson(
      this,
    );
  }
}

abstract class _AnimebytesSearchResponse extends AnimebytesSearchResponse {
  const factory _AnimebytesSearchResponse(
          {required final int results,
          required final Pagination pagination,
          required final int matches,
          @JsonKey(defaultValue: [])
          required final List<AnimebytesSearchResult> groups}) =
      _$_AnimebytesSearchResponse;
  const _AnimebytesSearchResponse._() : super._();

  factory _AnimebytesSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_AnimebytesSearchResponse.fromJson;

  @override
  int get results;
  @override
  Pagination get pagination;
  @override
  int get matches;
  @override
  @JsonKey(defaultValue: [])
  List<AnimebytesSearchResult> get groups;
  @override
  @JsonKey(ignore: true)
  _$$_AnimebytesSearchResponseCopyWith<_$_AnimebytesSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get current => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  Limit get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({int current, double max, Limit limit});

  $LimitCopyWith<$Res> get limit;
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? max = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as Limit,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LimitCopyWith<$Res> get limit {
    return $LimitCopyWith<$Res>(_value.limit, (value) {
      return _then(_value.copyWith(limit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination value, $Res Function(_$_Pagination) then) =
      __$$_PaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, double max, Limit limit});

  @override
  $LimitCopyWith<$Res> get limit;
}

/// @nodoc
class __$$_PaginationCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$_Pagination>
    implements _$$_PaginationCopyWith<$Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination _value, $Res Function(_$_Pagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? max = null,
    Object? limit = null,
  }) {
    return _then(_$_Pagination(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as Limit,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_Pagination extends _Pagination {
  const _$_Pagination(
      {required this.current, required this.max, required this.limit})
      : super._();

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationFromJson(json);

  @override
  final int current;
  @override
  final double max;
  @override
  final Limit limit;

  @override
  String toString() {
    return 'Pagination(current: $current, max: $max, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, max, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      __$$_PaginationCopyWithImpl<_$_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationToJson(
      this,
    );
  }
}

abstract class _Pagination extends Pagination {
  const factory _Pagination(
      {required final int current,
      required final double max,
      required final Limit limit}) = _$_Pagination;
  const _Pagination._() : super._();

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  int get current;
  @override
  double get max;
  @override
  Limit get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

Limit _$LimitFromJson(Map<String, dynamic> json) {
  return _Limit.fromJson(json);
}

/// @nodoc
mixin _$Limit {
  int get min => throw _privateConstructorUsedError;
  int get coerced => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LimitCopyWith<Limit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitCopyWith<$Res> {
  factory $LimitCopyWith(Limit value, $Res Function(Limit) then) =
      _$LimitCopyWithImpl<$Res, Limit>;
  @useResult
  $Res call({int min, int coerced, int max});
}

/// @nodoc
class _$LimitCopyWithImpl<$Res, $Val extends Limit>
    implements $LimitCopyWith<$Res> {
  _$LimitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? coerced = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      coerced: null == coerced
          ? _value.coerced
          : coerced // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LimitCopyWith<$Res> implements $LimitCopyWith<$Res> {
  factory _$$_LimitCopyWith(_$_Limit value, $Res Function(_$_Limit) then) =
      __$$_LimitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int coerced, int max});
}

/// @nodoc
class __$$_LimitCopyWithImpl<$Res> extends _$LimitCopyWithImpl<$Res, _$_Limit>
    implements _$$_LimitCopyWith<$Res> {
  __$$_LimitCopyWithImpl(_$_Limit _value, $Res Function(_$_Limit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? coerced = null,
    Object? max = null,
  }) {
    return _then(_$_Limit(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      coerced: null == coerced
          ? _value.coerced
          : coerced // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_Limit extends _Limit {
  const _$_Limit({required this.min, required this.coerced, required this.max})
      : super._();

  factory _$_Limit.fromJson(Map<String, dynamic> json) =>
      _$$_LimitFromJson(json);

  @override
  final int min;
  @override
  final int coerced;
  @override
  final int max;

  @override
  String toString() {
    return 'Limit(min: $min, coerced: $coerced, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Limit &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.coerced, coerced) || other.coerced == coerced) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, coerced, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LimitCopyWith<_$_Limit> get copyWith =>
      __$$_LimitCopyWithImpl<_$_Limit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LimitToJson(
      this,
    );
  }
}

abstract class _Limit extends Limit {
  const factory _Limit(
      {required final int min,
      required final int coerced,
      required final int max}) = _$_Limit;
  const _Limit._() : super._();

  factory _Limit.fromJson(Map<String, dynamic> json) = _$_Limit.fromJson;

  @override
  int get min;
  @override
  int get coerced;
  @override
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$_LimitCopyWith<_$_Limit> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimebytesSearchResult _$AnimebytesSearchResultFromJson(
    Map<String, dynamic> json) {
  return _AnimebytesSearchResult.fromJson(json);
}

/// @nodoc
mixin _$AnimebytesSearchResult {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  String get categoryName =>
      throw _privateConstructorUsedError; // required String fullName,
  String get groupName => throw _privateConstructorUsedError;
  int? get seriesId => throw _privateConstructorUsedError;
  String get seriesName => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
  Map<String, String> get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'DescriptionHTML')
  String? get descriptionHtml => throw _privateConstructorUsedError;
  int? get epCount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _studioListFromJson)
  List<String> get studioList => throw _privateConstructorUsedError;
  bool? get incomplete => throw _privateConstructorUsedError;
  bool? get ongoing => throw _privateConstructorUsedError;
  List<AnimebytesTorrent> get torrents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimebytesSearchResultCopyWith<AnimebytesSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimebytesSearchResultCopyWith<$Res> {
  factory $AnimebytesSearchResultCopyWith(AnimebytesSearchResult value,
          $Res Function(AnimebytesSearchResult) then) =
      _$AnimebytesSearchResultCopyWithImpl<$Res, AnimebytesSearchResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      String categoryName,
      String groupName,
      int? seriesId,
      String seriesName,
      String? year,
      String? image,
      @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
      Map<String, String> links,
      @JsonKey(name: 'DescriptionHTML') String? descriptionHtml,
      int? epCount,
      @JsonKey(fromJson: _studioListFromJson) List<String> studioList,
      bool? incomplete,
      bool? ongoing,
      List<AnimebytesTorrent> torrents});
}

/// @nodoc
class _$AnimebytesSearchResultCopyWithImpl<$Res,
        $Val extends AnimebytesSearchResult>
    implements $AnimebytesSearchResultCopyWith<$Res> {
  _$AnimebytesSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? groupName = null,
    Object? seriesId = freezed,
    Object? seriesName = null,
    Object? year = freezed,
    Object? image = freezed,
    Object? links = null,
    Object? descriptionHtml = freezed,
    Object? epCount = freezed,
    Object? studioList = null,
    Object? incomplete = freezed,
    Object? ongoing = freezed,
    Object? torrents = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      seriesId: freezed == seriesId
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesName: null == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      descriptionHtml: freezed == descriptionHtml
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      epCount: freezed == epCount
          ? _value.epCount
          : epCount // ignore: cast_nullable_to_non_nullable
              as int?,
      studioList: null == studioList
          ? _value.studioList
          : studioList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incomplete: freezed == incomplete
          ? _value.incomplete
          : incomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      ongoing: freezed == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as bool?,
      torrents: null == torrents
          ? _value.torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesTorrent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimebytesSearchResultCopyWith<$Res>
    implements $AnimebytesSearchResultCopyWith<$Res> {
  factory _$$_AnimebytesSearchResultCopyWith(_$_AnimebytesSearchResult value,
          $Res Function(_$_AnimebytesSearchResult) then) =
      __$$_AnimebytesSearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      String categoryName,
      String groupName,
      int? seriesId,
      String seriesName,
      String? year,
      String? image,
      @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
      Map<String, String> links,
      @JsonKey(name: 'DescriptionHTML') String? descriptionHtml,
      int? epCount,
      @JsonKey(fromJson: _studioListFromJson) List<String> studioList,
      bool? incomplete,
      bool? ongoing,
      List<AnimebytesTorrent> torrents});
}

/// @nodoc
class __$$_AnimebytesSearchResultCopyWithImpl<$Res>
    extends _$AnimebytesSearchResultCopyWithImpl<$Res,
        _$_AnimebytesSearchResult>
    implements _$$_AnimebytesSearchResultCopyWith<$Res> {
  __$$_AnimebytesSearchResultCopyWithImpl(_$_AnimebytesSearchResult _value,
      $Res Function(_$_AnimebytesSearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
    Object? groupName = null,
    Object? seriesId = freezed,
    Object? seriesName = null,
    Object? year = freezed,
    Object? image = freezed,
    Object? links = null,
    Object? descriptionHtml = freezed,
    Object? epCount = freezed,
    Object? studioList = null,
    Object? incomplete = freezed,
    Object? ongoing = freezed,
    Object? torrents = null,
  }) {
    return _then(_$_AnimebytesSearchResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      seriesId: freezed == seriesId
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesName: null == seriesName
          ? _value.seriesName
          : seriesName // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      descriptionHtml: freezed == descriptionHtml
          ? _value.descriptionHtml
          : descriptionHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      epCount: freezed == epCount
          ? _value.epCount
          : epCount // ignore: cast_nullable_to_non_nullable
              as int?,
      studioList: null == studioList
          ? _value._studioList
          : studioList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      incomplete: freezed == incomplete
          ? _value.incomplete
          : incomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      ongoing: freezed == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as bool?,
      torrents: null == torrents
          ? _value._torrents
          : torrents // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesTorrent>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_AnimebytesSearchResult extends _AnimebytesSearchResult {
  const _$_AnimebytesSearchResult(
      {@JsonKey(name: 'ID') required this.id,
      required this.categoryName,
      required this.groupName,
      required this.seriesId,
      required this.seriesName,
      required this.year,
      required this.image,
      @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
      required final Map<String, String> links,
      @JsonKey(name: 'DescriptionHTML') required this.descriptionHtml,
      required this.epCount,
      @JsonKey(fromJson: _studioListFromJson)
      required final List<String> studioList,
      required this.incomplete,
      required this.ongoing,
      required final List<AnimebytesTorrent> torrents})
      : _links = links,
        _studioList = studioList,
        _torrents = torrents,
        super._();

  factory _$_AnimebytesSearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_AnimebytesSearchResultFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  final String categoryName;
// required String fullName,
  @override
  final String groupName;
  @override
  final int? seriesId;
  @override
  final String seriesName;
  @override
  final String? year;
  @override
  final String? image;
  final Map<String, String> _links;
  @override
  @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
  Map<String, String> get links {
    if (_links is EqualUnmodifiableMapView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_links);
  }

  @override
  @JsonKey(name: 'DescriptionHTML')
  final String? descriptionHtml;
  @override
  final int? epCount;
  final List<String> _studioList;
  @override
  @JsonKey(fromJson: _studioListFromJson)
  List<String> get studioList {
    if (_studioList is EqualUnmodifiableListView) return _studioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studioList);
  }

  @override
  final bool? incomplete;
  @override
  final bool? ongoing;
  final List<AnimebytesTorrent> _torrents;
  @override
  List<AnimebytesTorrent> get torrents {
    if (_torrents is EqualUnmodifiableListView) return _torrents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_torrents);
  }

  @override
  String toString() {
    return 'AnimebytesSearchResult(id: $id, categoryName: $categoryName, groupName: $groupName, seriesId: $seriesId, seriesName: $seriesName, year: $year, image: $image, links: $links, descriptionHtml: $descriptionHtml, epCount: $epCount, studioList: $studioList, incomplete: $incomplete, ongoing: $ongoing, torrents: $torrents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimebytesSearchResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.seriesId, seriesId) ||
                other.seriesId == seriesId) &&
            (identical(other.seriesName, seriesName) ||
                other.seriesName == seriesName) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.descriptionHtml, descriptionHtml) ||
                other.descriptionHtml == descriptionHtml) &&
            (identical(other.epCount, epCount) || other.epCount == epCount) &&
            const DeepCollectionEquality()
                .equals(other._studioList, _studioList) &&
            (identical(other.incomplete, incomplete) ||
                other.incomplete == incomplete) &&
            (identical(other.ongoing, ongoing) || other.ongoing == ongoing) &&
            const DeepCollectionEquality().equals(other._torrents, _torrents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryName,
      groupName,
      seriesId,
      seriesName,
      year,
      image,
      const DeepCollectionEquality().hash(_links),
      descriptionHtml,
      epCount,
      const DeepCollectionEquality().hash(_studioList),
      incomplete,
      ongoing,
      const DeepCollectionEquality().hash(_torrents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimebytesSearchResultCopyWith<_$_AnimebytesSearchResult> get copyWith =>
      __$$_AnimebytesSearchResultCopyWithImpl<_$_AnimebytesSearchResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimebytesSearchResultToJson(
      this,
    );
  }
}

abstract class _AnimebytesSearchResult extends AnimebytesSearchResult {
  const factory _AnimebytesSearchResult(
      {@JsonKey(name: 'ID') required final int id,
      required final String categoryName,
      required final String groupName,
      required final int? seriesId,
      required final String seriesName,
      required final String? year,
      required final String? image,
      @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
      required final Map<String, String> links,
      @JsonKey(name: 'DescriptionHTML') required final String? descriptionHtml,
      required final int? epCount,
      @JsonKey(fromJson: _studioListFromJson)
      required final List<String> studioList,
      required final bool? incomplete,
      required final bool? ongoing,
      required final List<AnimebytesTorrent>
          torrents}) = _$_AnimebytesSearchResult;
  const _AnimebytesSearchResult._() : super._();

  factory _AnimebytesSearchResult.fromJson(Map<String, dynamic> json) =
      _$_AnimebytesSearchResult.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  String get categoryName;
  @override // required String fullName,
  String get groupName;
  @override
  int? get seriesId;
  @override
  String get seriesName;
  @override
  String? get year;
  @override
  String? get image;
  @override
  @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
  Map<String, String> get links;
  @override
  @JsonKey(name: 'DescriptionHTML')
  String? get descriptionHtml;
  @override
  int? get epCount;
  @override
  @JsonKey(fromJson: _studioListFromJson)
  List<String> get studioList;
  @override
  bool? get incomplete;
  @override
  bool? get ongoing;
  @override
  List<AnimebytesTorrent> get torrents;
  @override
  @JsonKey(ignore: true)
  _$$_AnimebytesSearchResultCopyWith<_$_AnimebytesSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimebytesTorrent _$AnimebytesTorrentFromJson(Map<String, dynamic> json) {
  return _AnimebytesTorrent.fromJson(json);
}

/// @nodoc
mixin _$AnimebytesTorrent {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  dynamic get editionData => throw _privateConstructorUsedError;
  double get rawDownMultiplier => throw _privateConstructorUsedError;
  double get rawUpMultiplier => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get property => throw _privateConstructorUsedError;
  int get snatched => throw _privateConstructorUsedError;
  int get seeders => throw _privateConstructorUsedError;
  int get leechers => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get fileCount => throw _privateConstructorUsedError;
  List<AnimebytesTorrentFile> get fileList =>
      throw _privateConstructorUsedError;
  DateTime get uploadTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimebytesTorrentCopyWith<AnimebytesTorrent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimebytesTorrentCopyWith<$Res> {
  factory $AnimebytesTorrentCopyWith(
          AnimebytesTorrent value, $Res Function(AnimebytesTorrent) then) =
      _$AnimebytesTorrentCopyWithImpl<$Res, AnimebytesTorrent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      dynamic editionData,
      double rawDownMultiplier,
      double rawUpMultiplier,
      String link,
      String property,
      int snatched,
      int seeders,
      int leechers,
      int status,
      int size,
      int fileCount,
      List<AnimebytesTorrentFile> fileList,
      DateTime uploadTime});
}

/// @nodoc
class _$AnimebytesTorrentCopyWithImpl<$Res, $Val extends AnimebytesTorrent>
    implements $AnimebytesTorrentCopyWith<$Res> {
  _$AnimebytesTorrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? editionData = freezed,
    Object? rawDownMultiplier = null,
    Object? rawUpMultiplier = null,
    Object? link = null,
    Object? property = null,
    Object? snatched = null,
    Object? seeders = null,
    Object? leechers = null,
    Object? status = null,
    Object? size = null,
    Object? fileCount = null,
    Object? fileList = null,
    Object? uploadTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      editionData: freezed == editionData
          ? _value.editionData
          : editionData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rawDownMultiplier: null == rawDownMultiplier
          ? _value.rawDownMultiplier
          : rawDownMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      rawUpMultiplier: null == rawUpMultiplier
          ? _value.rawUpMultiplier
          : rawUpMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      snatched: null == snatched
          ? _value.snatched
          : snatched // ignore: cast_nullable_to_non_nullable
              as int,
      seeders: null == seeders
          ? _value.seeders
          : seeders // ignore: cast_nullable_to_non_nullable
              as int,
      leechers: null == leechers
          ? _value.leechers
          : leechers // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fileCount: null == fileCount
          ? _value.fileCount
          : fileCount // ignore: cast_nullable_to_non_nullable
              as int,
      fileList: null == fileList
          ? _value.fileList
          : fileList // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesTorrentFile>,
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimebytesTorrentCopyWith<$Res>
    implements $AnimebytesTorrentCopyWith<$Res> {
  factory _$$_AnimebytesTorrentCopyWith(_$_AnimebytesTorrent value,
          $Res Function(_$_AnimebytesTorrent) then) =
      __$$_AnimebytesTorrentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      dynamic editionData,
      double rawDownMultiplier,
      double rawUpMultiplier,
      String link,
      String property,
      int snatched,
      int seeders,
      int leechers,
      int status,
      int size,
      int fileCount,
      List<AnimebytesTorrentFile> fileList,
      DateTime uploadTime});
}

/// @nodoc
class __$$_AnimebytesTorrentCopyWithImpl<$Res>
    extends _$AnimebytesTorrentCopyWithImpl<$Res, _$_AnimebytesTorrent>
    implements _$$_AnimebytesTorrentCopyWith<$Res> {
  __$$_AnimebytesTorrentCopyWithImpl(
      _$_AnimebytesTorrent _value, $Res Function(_$_AnimebytesTorrent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? editionData = freezed,
    Object? rawDownMultiplier = null,
    Object? rawUpMultiplier = null,
    Object? link = null,
    Object? property = null,
    Object? snatched = null,
    Object? seeders = null,
    Object? leechers = null,
    Object? status = null,
    Object? size = null,
    Object? fileCount = null,
    Object? fileList = null,
    Object? uploadTime = null,
  }) {
    return _then(_$_AnimebytesTorrent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      editionData: freezed == editionData
          ? _value.editionData
          : editionData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rawDownMultiplier: null == rawDownMultiplier
          ? _value.rawDownMultiplier
          : rawDownMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      rawUpMultiplier: null == rawUpMultiplier
          ? _value.rawUpMultiplier
          : rawUpMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      property: null == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String,
      snatched: null == snatched
          ? _value.snatched
          : snatched // ignore: cast_nullable_to_non_nullable
              as int,
      seeders: null == seeders
          ? _value.seeders
          : seeders // ignore: cast_nullable_to_non_nullable
              as int,
      leechers: null == leechers
          ? _value.leechers
          : leechers // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fileCount: null == fileCount
          ? _value.fileCount
          : fileCount // ignore: cast_nullable_to_non_nullable
              as int,
      fileList: null == fileList
          ? _value._fileList
          : fileList // ignore: cast_nullable_to_non_nullable
              as List<AnimebytesTorrentFile>,
      uploadTime: null == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_AnimebytesTorrent extends _AnimebytesTorrent {
  const _$_AnimebytesTorrent(
      {@JsonKey(name: 'ID') required this.id,
      required this.editionData,
      required this.rawDownMultiplier,
      required this.rawUpMultiplier,
      required this.link,
      required this.property,
      required this.snatched,
      required this.seeders,
      required this.leechers,
      required this.status,
      required this.size,
      required this.fileCount,
      required final List<AnimebytesTorrentFile> fileList,
      required this.uploadTime})
      : _fileList = fileList,
        super._();

  factory _$_AnimebytesTorrent.fromJson(Map<String, dynamic> json) =>
      _$$_AnimebytesTorrentFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  final dynamic editionData;
  @override
  final double rawDownMultiplier;
  @override
  final double rawUpMultiplier;
  @override
  final String link;
  @override
  final String property;
  @override
  final int snatched;
  @override
  final int seeders;
  @override
  final int leechers;
  @override
  final int status;
  @override
  final int size;
  @override
  final int fileCount;
  final List<AnimebytesTorrentFile> _fileList;
  @override
  List<AnimebytesTorrentFile> get fileList {
    if (_fileList is EqualUnmodifiableListView) return _fileList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileList);
  }

  @override
  final DateTime uploadTime;

  @override
  String toString() {
    return 'AnimebytesTorrent(id: $id, editionData: $editionData, rawDownMultiplier: $rawDownMultiplier, rawUpMultiplier: $rawUpMultiplier, link: $link, property: $property, snatched: $snatched, seeders: $seeders, leechers: $leechers, status: $status, size: $size, fileCount: $fileCount, fileList: $fileList, uploadTime: $uploadTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimebytesTorrent &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.editionData, editionData) &&
            (identical(other.rawDownMultiplier, rawDownMultiplier) ||
                other.rawDownMultiplier == rawDownMultiplier) &&
            (identical(other.rawUpMultiplier, rawUpMultiplier) ||
                other.rawUpMultiplier == rawUpMultiplier) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.snatched, snatched) ||
                other.snatched == snatched) &&
            (identical(other.seeders, seeders) || other.seeders == seeders) &&
            (identical(other.leechers, leechers) ||
                other.leechers == leechers) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fileCount, fileCount) ||
                other.fileCount == fileCount) &&
            const DeepCollectionEquality().equals(other._fileList, _fileList) &&
            (identical(other.uploadTime, uploadTime) ||
                other.uploadTime == uploadTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(editionData),
      rawDownMultiplier,
      rawUpMultiplier,
      link,
      property,
      snatched,
      seeders,
      leechers,
      status,
      size,
      fileCount,
      const DeepCollectionEquality().hash(_fileList),
      uploadTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimebytesTorrentCopyWith<_$_AnimebytesTorrent> get copyWith =>
      __$$_AnimebytesTorrentCopyWithImpl<_$_AnimebytesTorrent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimebytesTorrentToJson(
      this,
    );
  }
}

abstract class _AnimebytesTorrent extends AnimebytesTorrent {
  const factory _AnimebytesTorrent(
      {@JsonKey(name: 'ID') required final int id,
      required final dynamic editionData,
      required final double rawDownMultiplier,
      required final double rawUpMultiplier,
      required final String link,
      required final String property,
      required final int snatched,
      required final int seeders,
      required final int leechers,
      required final int status,
      required final int size,
      required final int fileCount,
      required final List<AnimebytesTorrentFile> fileList,
      required final DateTime uploadTime}) = _$_AnimebytesTorrent;
  const _AnimebytesTorrent._() : super._();

  factory _AnimebytesTorrent.fromJson(Map<String, dynamic> json) =
      _$_AnimebytesTorrent.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  dynamic get editionData;
  @override
  double get rawDownMultiplier;
  @override
  double get rawUpMultiplier;
  @override
  String get link;
  @override
  String get property;
  @override
  int get snatched;
  @override
  int get seeders;
  @override
  int get leechers;
  @override
  int get status;
  @override
  int get size;
  @override
  int get fileCount;
  @override
  List<AnimebytesTorrentFile> get fileList;
  @override
  DateTime get uploadTime;
  @override
  @JsonKey(ignore: true)
  _$$_AnimebytesTorrentCopyWith<_$_AnimebytesTorrent> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimebytesTorrentFile _$AnimebytesTorrentFileFromJson(
    Map<String, dynamic> json) {
  return _AnimebytesTorrentFile.fromJson(json);
}

/// @nodoc
mixin _$AnimebytesTorrentFile {
  String get filename => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimebytesTorrentFileCopyWith<AnimebytesTorrentFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimebytesTorrentFileCopyWith<$Res> {
  factory $AnimebytesTorrentFileCopyWith(AnimebytesTorrentFile value,
          $Res Function(AnimebytesTorrentFile) then) =
      _$AnimebytesTorrentFileCopyWithImpl<$Res, AnimebytesTorrentFile>;
  @useResult
  $Res call({String filename, int size});
}

/// @nodoc
class _$AnimebytesTorrentFileCopyWithImpl<$Res,
        $Val extends AnimebytesTorrentFile>
    implements $AnimebytesTorrentFileCopyWith<$Res> {
  _$AnimebytesTorrentFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimebytesTorrentFileCopyWith<$Res>
    implements $AnimebytesTorrentFileCopyWith<$Res> {
  factory _$$_AnimebytesTorrentFileCopyWith(_$_AnimebytesTorrentFile value,
          $Res Function(_$_AnimebytesTorrentFile) then) =
      __$$_AnimebytesTorrentFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filename, int size});
}

/// @nodoc
class __$$_AnimebytesTorrentFileCopyWithImpl<$Res>
    extends _$AnimebytesTorrentFileCopyWithImpl<$Res, _$_AnimebytesTorrentFile>
    implements _$$_AnimebytesTorrentFileCopyWith<$Res> {
  __$$_AnimebytesTorrentFileCopyWithImpl(_$_AnimebytesTorrentFile _value,
      $Res Function(_$_AnimebytesTorrentFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? size = null,
  }) {
    return _then(_$_AnimebytesTorrentFile(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimebytesTorrentFile extends _AnimebytesTorrentFile {
  const _$_AnimebytesTorrentFile({required this.filename, required this.size})
      : super._();

  factory _$_AnimebytesTorrentFile.fromJson(Map<String, dynamic> json) =>
      _$$_AnimebytesTorrentFileFromJson(json);

  @override
  final String filename;
  @override
  final int size;

  @override
  String toString() {
    return 'AnimebytesTorrentFile(filename: $filename, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimebytesTorrentFile &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filename, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimebytesTorrentFileCopyWith<_$_AnimebytesTorrentFile> get copyWith =>
      __$$_AnimebytesTorrentFileCopyWithImpl<_$_AnimebytesTorrentFile>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimebytesTorrentFileToJson(
      this,
    );
  }
}

abstract class _AnimebytesTorrentFile extends AnimebytesTorrentFile {
  const factory _AnimebytesTorrentFile(
      {required final String filename,
      required final int size}) = _$_AnimebytesTorrentFile;
  const _AnimebytesTorrentFile._() : super._();

  factory _AnimebytesTorrentFile.fromJson(Map<String, dynamic> json) =
      _$_AnimebytesTorrentFile.fromJson;

  @override
  String get filename;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$_AnimebytesTorrentFileCopyWith<_$_AnimebytesTorrentFile> get copyWith =>
      throw _privateConstructorUsedError;
}
