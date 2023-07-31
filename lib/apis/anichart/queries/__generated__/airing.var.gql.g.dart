// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airing.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAlAiringVars> _$gAlAiringVarsSerializer =
    new _$GAlAiringVarsSerializer();

class _$GAlAiringVarsSerializer implements StructuredSerializer<GAlAiringVars> {
  @override
  final Iterable<Type> types = const [GAlAiringVars, _$GAlAiringVars];
  @override
  final String wireName = 'GAlAiringVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAlAiringVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GAlAiringVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAlAiringVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaSeason))
              as _i1.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAlAiringVars extends GAlAiringVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final _i1.GMediaSeason? season;
  @override
  final int? seasonYear;

  factory _$GAlAiringVars([void Function(GAlAiringVarsBuilder)? updates]) =>
      (new GAlAiringVarsBuilder()..update(updates))._build();

  _$GAlAiringVars._({this.page, this.perPage, this.season, this.seasonYear})
      : super._();

  @override
  GAlAiringVars rebuild(void Function(GAlAiringVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAlAiringVarsBuilder toBuilder() => new GAlAiringVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAlAiringVars &&
        page == other.page &&
        perPage == other.perPage &&
        season == other.season &&
        seasonYear == other.seasonYear;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAlAiringVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('season', season)
          ..add('seasonYear', seasonYear))
        .toString();
  }
}

class GAlAiringVarsBuilder
    implements Builder<GAlAiringVars, GAlAiringVarsBuilder> {
  _$GAlAiringVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  _i1.GMediaSeason? _season;
  _i1.GMediaSeason? get season => _$this._season;
  set season(_i1.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  GAlAiringVarsBuilder();

  GAlAiringVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAlAiringVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAlAiringVars;
  }

  @override
  void update(void Function(GAlAiringVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAlAiringVars build() => _build();

  _$GAlAiringVars _build() {
    final _$result = _$v ??
        new _$GAlAiringVars._(
            page: page,
            perPage: perPage,
            season: season,
            seasonYear: seasonYear);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
