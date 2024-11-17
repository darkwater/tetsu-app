// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'torrent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Torrent _$TorrentFromJson(Map<String, dynamic> json) {
  return _Torrent.fromJson(json);
}

/// @nodoc
mixin _$Torrent {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get downloadDir => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;
  double get percentDone => throw _privateConstructorUsedError;
  double get rateDownload => throw _privateConstructorUsedError;
  double get rateUpload => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromJson)
  DateTime get dateCreated => throw _privateConstructorUsedError;

  /// Serializes this Torrent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Torrent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TorrentCopyWith<Torrent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TorrentCopyWith<$Res> {
  factory $TorrentCopyWith(Torrent value, $Res Function(Torrent) then) =
      _$TorrentCopyWithImpl<$Res, Torrent>;
  @useResult
  $Res call(
      {int id,
      String name,
      int status,
      String downloadDir,
      int totalSize,
      double percentDone,
      double rateDownload,
      double rateUpload,
      String? comment,
      @JsonKey(fromJson: _dateFromJson) DateTime dateCreated});
}

/// @nodoc
class _$TorrentCopyWithImpl<$Res, $Val extends Torrent>
    implements $TorrentCopyWith<$Res> {
  _$TorrentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Torrent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? downloadDir = null,
    Object? totalSize = null,
    Object? percentDone = null,
    Object? rateDownload = null,
    Object? rateUpload = null,
    Object? comment = freezed,
    Object? dateCreated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      downloadDir: null == downloadDir
          ? _value.downloadDir
          : downloadDir // ignore: cast_nullable_to_non_nullable
              as String,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      percentDone: null == percentDone
          ? _value.percentDone
          : percentDone // ignore: cast_nullable_to_non_nullable
              as double,
      rateDownload: null == rateDownload
          ? _value.rateDownload
          : rateDownload // ignore: cast_nullable_to_non_nullable
              as double,
      rateUpload: null == rateUpload
          ? _value.rateUpload
          : rateUpload // ignore: cast_nullable_to_non_nullable
              as double,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TorrentImplCopyWith<$Res> implements $TorrentCopyWith<$Res> {
  factory _$$TorrentImplCopyWith(
          _$TorrentImpl value, $Res Function(_$TorrentImpl) then) =
      __$$TorrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int status,
      String downloadDir,
      int totalSize,
      double percentDone,
      double rateDownload,
      double rateUpload,
      String? comment,
      @JsonKey(fromJson: _dateFromJson) DateTime dateCreated});
}

/// @nodoc
class __$$TorrentImplCopyWithImpl<$Res>
    extends _$TorrentCopyWithImpl<$Res, _$TorrentImpl>
    implements _$$TorrentImplCopyWith<$Res> {
  __$$TorrentImplCopyWithImpl(
      _$TorrentImpl _value, $Res Function(_$TorrentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Torrent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? downloadDir = null,
    Object? totalSize = null,
    Object? percentDone = null,
    Object? rateDownload = null,
    Object? rateUpload = null,
    Object? comment = freezed,
    Object? dateCreated = null,
  }) {
    return _then(_$TorrentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      downloadDir: null == downloadDir
          ? _value.downloadDir
          : downloadDir // ignore: cast_nullable_to_non_nullable
              as String,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      percentDone: null == percentDone
          ? _value.percentDone
          : percentDone // ignore: cast_nullable_to_non_nullable
              as double,
      rateDownload: null == rateDownload
          ? _value.rateDownload
          : rateDownload // ignore: cast_nullable_to_non_nullable
              as double,
      rateUpload: null == rateUpload
          ? _value.rateUpload
          : rateUpload // ignore: cast_nullable_to_non_nullable
              as double,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TorrentImpl extends _Torrent {
  const _$TorrentImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.downloadDir,
      required this.totalSize,
      required this.percentDone,
      required this.rateDownload,
      required this.rateUpload,
      required this.comment,
      @JsonKey(fromJson: _dateFromJson) required this.dateCreated})
      : super._();

  factory _$TorrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TorrentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int status;
  @override
  final String downloadDir;
  @override
  final int totalSize;
  @override
  final double percentDone;
  @override
  final double rateDownload;
  @override
  final double rateUpload;
  @override
  final String? comment;
  @override
  @JsonKey(fromJson: _dateFromJson)
  final DateTime dateCreated;

  @override
  String toString() {
    return 'Torrent(id: $id, name: $name, status: $status, downloadDir: $downloadDir, totalSize: $totalSize, percentDone: $percentDone, rateDownload: $rateDownload, rateUpload: $rateUpload, comment: $comment, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TorrentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.downloadDir, downloadDir) ||
                other.downloadDir == downloadDir) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.percentDone, percentDone) ||
                other.percentDone == percentDone) &&
            (identical(other.rateDownload, rateDownload) ||
                other.rateDownload == rateDownload) &&
            (identical(other.rateUpload, rateUpload) ||
                other.rateUpload == rateUpload) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, downloadDir,
      totalSize, percentDone, rateDownload, rateUpload, comment, dateCreated);

  /// Create a copy of Torrent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TorrentImplCopyWith<_$TorrentImpl> get copyWith =>
      __$$TorrentImplCopyWithImpl<_$TorrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TorrentImplToJson(
      this,
    );
  }
}

abstract class _Torrent extends Torrent {
  const factory _Torrent(
      {required final int id,
      required final String name,
      required final int status,
      required final String downloadDir,
      required final int totalSize,
      required final double percentDone,
      required final double rateDownload,
      required final double rateUpload,
      required final String? comment,
      @JsonKey(fromJson: _dateFromJson)
      required final DateTime dateCreated}) = _$TorrentImpl;
  const _Torrent._() : super._();

  factory _Torrent.fromJson(Map<String, dynamic> json) = _$TorrentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get status;
  @override
  String get downloadDir;
  @override
  int get totalSize;
  @override
  double get percentDone;
  @override
  double get rateDownload;
  @override
  double get rateUpload;
  @override
  String? get comment;
  @override
  @JsonKey(fromJson: _dateFromJson)
  DateTime get dateCreated;

  /// Create a copy of Torrent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TorrentImplCopyWith<_$TorrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
