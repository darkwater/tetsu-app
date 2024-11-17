// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WsMpvMessage _$WsMpvMessageFromJson(Map<String, dynamic> json) {
  switch (json['kind']) {
    case 'Control':
      return WsMpvMessageControl.fromJson(json);
    case 'Mpv':
      return WsMpvMessageMpv.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'kind', 'WsMpvMessage',
          'Invalid union type "${json['kind']}"!');
  }
}

/// @nodoc
mixin _$WsMpvMessage {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlMessage data) control,
    required TResult Function(Map<String, Object?> data) mpv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlMessage data)? control,
    TResult? Function(Map<String, Object?> data)? mpv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlMessage data)? control,
    TResult Function(Map<String, Object?> data)? mpv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WsMpvMessageControl value) control,
    required TResult Function(WsMpvMessageMpv value) mpv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WsMpvMessageControl value)? control,
    TResult? Function(WsMpvMessageMpv value)? mpv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WsMpvMessageControl value)? control,
    TResult Function(WsMpvMessageMpv value)? mpv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WsMpvMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsMpvMessageCopyWith<$Res> {
  factory $WsMpvMessageCopyWith(
          WsMpvMessage value, $Res Function(WsMpvMessage) then) =
      _$WsMpvMessageCopyWithImpl<$Res, WsMpvMessage>;
}

/// @nodoc
class _$WsMpvMessageCopyWithImpl<$Res, $Val extends WsMpvMessage>
    implements $WsMpvMessageCopyWith<$Res> {
  _$WsMpvMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WsMpvMessageControlImplCopyWith<$Res> {
  factory _$$WsMpvMessageControlImplCopyWith(_$WsMpvMessageControlImpl value,
          $Res Function(_$WsMpvMessageControlImpl) then) =
      __$$WsMpvMessageControlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ControlMessage data});

  $ControlMessageCopyWith<$Res> get data;
}

/// @nodoc
class __$$WsMpvMessageControlImplCopyWithImpl<$Res>
    extends _$WsMpvMessageCopyWithImpl<$Res, _$WsMpvMessageControlImpl>
    implements _$$WsMpvMessageControlImplCopyWith<$Res> {
  __$$WsMpvMessageControlImplCopyWithImpl(_$WsMpvMessageControlImpl _value,
      $Res Function(_$WsMpvMessageControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WsMpvMessageControlImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ControlMessage,
    ));
  }

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ControlMessageCopyWith<$Res> get data {
    return $ControlMessageCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WsMpvMessageControlImpl extends WsMpvMessageControl {
  const _$WsMpvMessageControlImpl(this.data, {final String? $type})
      : $type = $type ?? 'Control',
        super._();

  factory _$WsMpvMessageControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$WsMpvMessageControlImplFromJson(json);

  @override
  final ControlMessage data;

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'WsMpvMessage.control(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMpvMessageControlImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMpvMessageControlImplCopyWith<_$WsMpvMessageControlImpl> get copyWith =>
      __$$WsMpvMessageControlImplCopyWithImpl<_$WsMpvMessageControlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlMessage data) control,
    required TResult Function(Map<String, Object?> data) mpv,
  }) {
    return control(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlMessage data)? control,
    TResult? Function(Map<String, Object?> data)? mpv,
  }) {
    return control?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlMessage data)? control,
    TResult Function(Map<String, Object?> data)? mpv,
    required TResult orElse(),
  }) {
    if (control != null) {
      return control(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WsMpvMessageControl value) control,
    required TResult Function(WsMpvMessageMpv value) mpv,
  }) {
    return control(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WsMpvMessageControl value)? control,
    TResult? Function(WsMpvMessageMpv value)? mpv,
  }) {
    return control?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WsMpvMessageControl value)? control,
    TResult Function(WsMpvMessageMpv value)? mpv,
    required TResult orElse(),
  }) {
    if (control != null) {
      return control(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WsMpvMessageControlImplToJson(
      this,
    );
  }
}

abstract class WsMpvMessageControl extends WsMpvMessage {
  const factory WsMpvMessageControl(final ControlMessage data) =
      _$WsMpvMessageControlImpl;
  const WsMpvMessageControl._() : super._();

  factory WsMpvMessageControl.fromJson(Map<String, dynamic> json) =
      _$WsMpvMessageControlImpl.fromJson;

  @override
  ControlMessage get data;

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsMpvMessageControlImplCopyWith<_$WsMpvMessageControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WsMpvMessageMpvImplCopyWith<$Res> {
  factory _$$WsMpvMessageMpvImplCopyWith(_$WsMpvMessageMpvImpl value,
          $Res Function(_$WsMpvMessageMpvImpl) then) =
      __$$WsMpvMessageMpvImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Object?> data});
}

/// @nodoc
class __$$WsMpvMessageMpvImplCopyWithImpl<$Res>
    extends _$WsMpvMessageCopyWithImpl<$Res, _$WsMpvMessageMpvImpl>
    implements _$$WsMpvMessageMpvImplCopyWith<$Res> {
  __$$WsMpvMessageMpvImplCopyWithImpl(
      _$WsMpvMessageMpvImpl _value, $Res Function(_$WsMpvMessageMpvImpl) _then)
      : super(_value, _then);

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WsMpvMessageMpvImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WsMpvMessageMpvImpl extends WsMpvMessageMpv {
  const _$WsMpvMessageMpvImpl(final Map<String, Object?> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'Mpv',
        super._();

  factory _$WsMpvMessageMpvImpl.fromJson(Map<String, dynamic> json) =>
      _$$WsMpvMessageMpvImplFromJson(json);

  final Map<String, Object?> _data;
  @override
  Map<String, Object?> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'WsMpvMessage.mpv(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMpvMessageMpvImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMpvMessageMpvImplCopyWith<_$WsMpvMessageMpvImpl> get copyWith =>
      __$$WsMpvMessageMpvImplCopyWithImpl<_$WsMpvMessageMpvImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlMessage data) control,
    required TResult Function(Map<String, Object?> data) mpv,
  }) {
    return mpv(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlMessage data)? control,
    TResult? Function(Map<String, Object?> data)? mpv,
  }) {
    return mpv?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlMessage data)? control,
    TResult Function(Map<String, Object?> data)? mpv,
    required TResult orElse(),
  }) {
    if (mpv != null) {
      return mpv(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WsMpvMessageControl value) control,
    required TResult Function(WsMpvMessageMpv value) mpv,
  }) {
    return mpv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WsMpvMessageControl value)? control,
    TResult? Function(WsMpvMessageMpv value)? mpv,
  }) {
    return mpv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WsMpvMessageControl value)? control,
    TResult Function(WsMpvMessageMpv value)? mpv,
    required TResult orElse(),
  }) {
    if (mpv != null) {
      return mpv(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WsMpvMessageMpvImplToJson(
      this,
    );
  }
}

abstract class WsMpvMessageMpv extends WsMpvMessage {
  const factory WsMpvMessageMpv(final Map<String, Object?> data) =
      _$WsMpvMessageMpvImpl;
  const WsMpvMessageMpv._() : super._();

  factory WsMpvMessageMpv.fromJson(Map<String, dynamic> json) =
      _$WsMpvMessageMpvImpl.fromJson;

  @override
  Map<String, Object?> get data;

  /// Create a copy of WsMpvMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsMpvMessageMpvImplCopyWith<_$WsMpvMessageMpvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ControlMessage _$ControlMessageFromJson(Map<String, dynamic> json) {
  switch (json['kind']) {
    case 'Started':
      return ControlMessageStarted.fromJson(json);
    case 'Start':
      return ControlMessageStart.fromJson(json);
    case 'Stopped':
      return ControlMessageStopped.fromJson(json);
    case 'Stop':
      return ControlMessageStop.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'kind', 'ControlMessage',
          'Invalid union type "${json['kind']}"!');
  }
}

/// @nodoc
mixin _$ControlMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() start,
    required TResult Function() stopped,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? start,
    TResult? Function()? stopped,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? start,
    TResult Function()? stopped,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlMessageStarted value) started,
    required TResult Function(ControlMessageStart value) start,
    required TResult Function(ControlMessageStopped value) stopped,
    required TResult Function(ControlMessageStop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlMessageStarted value)? started,
    TResult? Function(ControlMessageStart value)? start,
    TResult? Function(ControlMessageStopped value)? stopped,
    TResult? Function(ControlMessageStop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlMessageStarted value)? started,
    TResult Function(ControlMessageStart value)? start,
    TResult Function(ControlMessageStopped value)? stopped,
    TResult Function(ControlMessageStop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ControlMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlMessageCopyWith<$Res> {
  factory $ControlMessageCopyWith(
          ControlMessage value, $Res Function(ControlMessage) then) =
      _$ControlMessageCopyWithImpl<$Res, ControlMessage>;
}

/// @nodoc
class _$ControlMessageCopyWithImpl<$Res, $Val extends ControlMessage>
    implements $ControlMessageCopyWith<$Res> {
  _$ControlMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ControlMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ControlMessageStartedImplCopyWith<$Res> {
  factory _$$ControlMessageStartedImplCopyWith(
          _$ControlMessageStartedImpl value,
          $Res Function(_$ControlMessageStartedImpl) then) =
      __$$ControlMessageStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStartedImplCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStartedImpl>
    implements _$$ControlMessageStartedImplCopyWith<$Res> {
  __$$ControlMessageStartedImplCopyWithImpl(_$ControlMessageStartedImpl _value,
      $Res Function(_$ControlMessageStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStartedImpl extends ControlMessageStarted {
  const _$ControlMessageStartedImpl({final String? $type})
      : $type = $type ?? 'Started',
        super._();

  factory _$ControlMessageStartedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStartedImplFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlMessageStartedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() start,
    required TResult Function() stopped,
    required TResult Function() stop,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? start,
    TResult? Function()? stopped,
    TResult? Function()? stop,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? start,
    TResult Function()? stopped,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlMessageStarted value) started,
    required TResult Function(ControlMessageStart value) start,
    required TResult Function(ControlMessageStopped value) stopped,
    required TResult Function(ControlMessageStop value) stop,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlMessageStarted value)? started,
    TResult? Function(ControlMessageStart value)? start,
    TResult? Function(ControlMessageStopped value)? stopped,
    TResult? Function(ControlMessageStop value)? stop,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlMessageStarted value)? started,
    TResult Function(ControlMessageStart value)? start,
    TResult Function(ControlMessageStopped value)? stopped,
    TResult Function(ControlMessageStop value)? stop,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlMessageStartedImplToJson(
      this,
    );
  }
}

abstract class ControlMessageStarted extends ControlMessage {
  const factory ControlMessageStarted() = _$ControlMessageStartedImpl;
  const ControlMessageStarted._() : super._();

  factory ControlMessageStarted.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStartedImpl.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStartImplCopyWith<$Res> {
  factory _$$ControlMessageStartImplCopyWith(_$ControlMessageStartImpl value,
          $Res Function(_$ControlMessageStartImpl) then) =
      __$$ControlMessageStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStartImplCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStartImpl>
    implements _$$ControlMessageStartImplCopyWith<$Res> {
  __$$ControlMessageStartImplCopyWithImpl(_$ControlMessageStartImpl _value,
      $Res Function(_$ControlMessageStartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStartImpl extends ControlMessageStart {
  const _$ControlMessageStartImpl({final String? $type})
      : $type = $type ?? 'Start',
        super._();

  factory _$ControlMessageStartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStartImplFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlMessageStartImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() start,
    required TResult Function() stopped,
    required TResult Function() stop,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? start,
    TResult? Function()? stopped,
    TResult? Function()? stop,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? start,
    TResult Function()? stopped,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlMessageStarted value) started,
    required TResult Function(ControlMessageStart value) start,
    required TResult Function(ControlMessageStopped value) stopped,
    required TResult Function(ControlMessageStop value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlMessageStarted value)? started,
    TResult? Function(ControlMessageStart value)? start,
    TResult? Function(ControlMessageStopped value)? stopped,
    TResult? Function(ControlMessageStop value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlMessageStarted value)? started,
    TResult Function(ControlMessageStart value)? start,
    TResult Function(ControlMessageStopped value)? stopped,
    TResult Function(ControlMessageStop value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlMessageStartImplToJson(
      this,
    );
  }
}

abstract class ControlMessageStart extends ControlMessage {
  const factory ControlMessageStart() = _$ControlMessageStartImpl;
  const ControlMessageStart._() : super._();

  factory ControlMessageStart.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStartImpl.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStoppedImplCopyWith<$Res> {
  factory _$$ControlMessageStoppedImplCopyWith(
          _$ControlMessageStoppedImpl value,
          $Res Function(_$ControlMessageStoppedImpl) then) =
      __$$ControlMessageStoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStoppedImplCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStoppedImpl>
    implements _$$ControlMessageStoppedImplCopyWith<$Res> {
  __$$ControlMessageStoppedImplCopyWithImpl(_$ControlMessageStoppedImpl _value,
      $Res Function(_$ControlMessageStoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStoppedImpl extends ControlMessageStopped {
  const _$ControlMessageStoppedImpl({final String? $type})
      : $type = $type ?? 'Stopped',
        super._();

  factory _$ControlMessageStoppedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStoppedImplFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.stopped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlMessageStoppedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() start,
    required TResult Function() stopped,
    required TResult Function() stop,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? start,
    TResult? Function()? stopped,
    TResult? Function()? stop,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? start,
    TResult Function()? stopped,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlMessageStarted value) started,
    required TResult Function(ControlMessageStart value) start,
    required TResult Function(ControlMessageStopped value) stopped,
    required TResult Function(ControlMessageStop value) stop,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlMessageStarted value)? started,
    TResult? Function(ControlMessageStart value)? start,
    TResult? Function(ControlMessageStopped value)? stopped,
    TResult? Function(ControlMessageStop value)? stop,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlMessageStarted value)? started,
    TResult Function(ControlMessageStart value)? start,
    TResult Function(ControlMessageStopped value)? stopped,
    TResult Function(ControlMessageStop value)? stop,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlMessageStoppedImplToJson(
      this,
    );
  }
}

abstract class ControlMessageStopped extends ControlMessage {
  const factory ControlMessageStopped() = _$ControlMessageStoppedImpl;
  const ControlMessageStopped._() : super._();

  factory ControlMessageStopped.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStoppedImpl.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStopImplCopyWith<$Res> {
  factory _$$ControlMessageStopImplCopyWith(_$ControlMessageStopImpl value,
          $Res Function(_$ControlMessageStopImpl) then) =
      __$$ControlMessageStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStopImplCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStopImpl>
    implements _$$ControlMessageStopImplCopyWith<$Res> {
  __$$ControlMessageStopImplCopyWithImpl(_$ControlMessageStopImpl _value,
      $Res Function(_$ControlMessageStopImpl) _then)
      : super(_value, _then);

  /// Create a copy of ControlMessage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStopImpl extends ControlMessageStop {
  const _$ControlMessageStopImpl({final String? $type})
      : $type = $type ?? 'Stop',
        super._();

  factory _$ControlMessageStopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStopImplFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ControlMessageStopImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() start,
    required TResult Function() stopped,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? start,
    TResult? Function()? stopped,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? start,
    TResult Function()? stopped,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ControlMessageStarted value) started,
    required TResult Function(ControlMessageStart value) start,
    required TResult Function(ControlMessageStopped value) stopped,
    required TResult Function(ControlMessageStop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ControlMessageStarted value)? started,
    TResult? Function(ControlMessageStart value)? start,
    TResult? Function(ControlMessageStopped value)? stopped,
    TResult? Function(ControlMessageStop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ControlMessageStarted value)? started,
    TResult Function(ControlMessageStart value)? start,
    TResult Function(ControlMessageStopped value)? stopped,
    TResult Function(ControlMessageStop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlMessageStopImplToJson(
      this,
    );
  }
}

abstract class ControlMessageStop extends ControlMessage {
  const factory ControlMessageStop() = _$ControlMessageStopImpl;
  const ControlMessageStop._() : super._();

  factory ControlMessageStop.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStopImpl.fromJson;
}

MpvRequest _$MpvRequestFromJson(Map<String, dynamic> json) {
  return _MpvRequest.fromJson(json);
}

/// @nodoc
mixin _$MpvRequest {
  List<dynamic> get command => throw _privateConstructorUsedError;
  int? get requestId => throw _privateConstructorUsedError;
  bool? get async => throw _privateConstructorUsedError;

  /// Serializes this MpvRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MpvRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MpvRequestCopyWith<MpvRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpvRequestCopyWith<$Res> {
  factory $MpvRequestCopyWith(
          MpvRequest value, $Res Function(MpvRequest) then) =
      _$MpvRequestCopyWithImpl<$Res, MpvRequest>;
  @useResult
  $Res call({List<dynamic> command, int? requestId, bool? async});
}

/// @nodoc
class _$MpvRequestCopyWithImpl<$Res, $Val extends MpvRequest>
    implements $MpvRequestCopyWith<$Res> {
  _$MpvRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MpvRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? requestId = freezed,
    Object? async = freezed,
  }) {
    return _then(_value.copyWith(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      async: freezed == async
          ? _value.async
          : async // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpvRequestImplCopyWith<$Res>
    implements $MpvRequestCopyWith<$Res> {
  factory _$$MpvRequestImplCopyWith(
          _$MpvRequestImpl value, $Res Function(_$MpvRequestImpl) then) =
      __$$MpvRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> command, int? requestId, bool? async});
}

/// @nodoc
class __$$MpvRequestImplCopyWithImpl<$Res>
    extends _$MpvRequestCopyWithImpl<$Res, _$MpvRequestImpl>
    implements _$$MpvRequestImplCopyWith<$Res> {
  __$$MpvRequestImplCopyWithImpl(
      _$MpvRequestImpl _value, $Res Function(_$MpvRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MpvRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? requestId = freezed,
    Object? async = freezed,
  }) {
    return _then(_$MpvRequestImpl(
      command: null == command
          ? _value._command
          : command // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int?,
      async: freezed == async
          ? _value.async
          : async // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class _$MpvRequestImpl extends _MpvRequest {
  const _$MpvRequestImpl(
      {required final List<dynamic> command, this.requestId, this.async})
      : _command = command,
        super._();

  factory _$MpvRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpvRequestImplFromJson(json);

  final List<dynamic> _command;
  @override
  List<dynamic> get command {
    if (_command is EqualUnmodifiableListView) return _command;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_command);
  }

  @override
  final int? requestId;
  @override
  final bool? async;

  @override
  String toString() {
    return 'MpvRequest(command: $command, requestId: $requestId, async: $async)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvRequestImpl &&
            const DeepCollectionEquality().equals(other._command, _command) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.async, async) || other.async == async));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_command), requestId, async);

  /// Create a copy of MpvRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvRequestImplCopyWith<_$MpvRequestImpl> get copyWith =>
      __$$MpvRequestImplCopyWithImpl<_$MpvRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpvRequestImplToJson(
      this,
    );
  }
}

abstract class _MpvRequest extends MpvRequest {
  const factory _MpvRequest(
      {required final List<dynamic> command,
      final int? requestId,
      final bool? async}) = _$MpvRequestImpl;
  const _MpvRequest._() : super._();

  factory _MpvRequest.fromJson(Map<String, dynamic> json) =
      _$MpvRequestImpl.fromJson;

  @override
  List<dynamic> get command;
  @override
  int? get requestId;
  @override
  bool? get async;

  /// Create a copy of MpvRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MpvRequestImplCopyWith<_$MpvRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MpvResponse _$MpvResponseFromJson(Map<String, dynamic> json) {
  return _MpvResponse.fromJson(json);
}

/// @nodoc
mixin _$MpvResponse {
  int? get requestid => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  /// Serializes this MpvResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MpvResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MpvResponseCopyWith<MpvResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpvResponseCopyWith<$Res> {
  factory $MpvResponseCopyWith(
          MpvResponse value, $Res Function(MpvResponse) then) =
      _$MpvResponseCopyWithImpl<$Res, MpvResponse>;
  @useResult
  $Res call({int? requestid, String? error, Object? data});
}

/// @nodoc
class _$MpvResponseCopyWithImpl<$Res, $Val extends MpvResponse>
    implements $MpvResponseCopyWith<$Res> {
  _$MpvResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MpvResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestid = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      requestid: freezed == requestid
          ? _value.requestid
          : requestid // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpvResponseImplCopyWith<$Res>
    implements $MpvResponseCopyWith<$Res> {
  factory _$$MpvResponseImplCopyWith(
          _$MpvResponseImpl value, $Res Function(_$MpvResponseImpl) then) =
      __$$MpvResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? requestid, String? error, Object? data});
}

/// @nodoc
class __$$MpvResponseImplCopyWithImpl<$Res>
    extends _$MpvResponseCopyWithImpl<$Res, _$MpvResponseImpl>
    implements _$$MpvResponseImplCopyWith<$Res> {
  __$$MpvResponseImplCopyWithImpl(
      _$MpvResponseImpl _value, $Res Function(_$MpvResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MpvResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestid = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MpvResponseImpl(
      requestid: freezed == requestid
          ? _value.requestid
          : requestid // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpvResponseImpl extends _MpvResponse {
  const _$MpvResponseImpl({this.requestid, this.error, this.data}) : super._();

  factory _$MpvResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpvResponseImplFromJson(json);

  @override
  final int? requestid;
  @override
  final String? error;
  @override
  final Object? data;

  @override
  String toString() {
    return 'MpvResponse(requestid: $requestid, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvResponseImpl &&
            (identical(other.requestid, requestid) ||
                other.requestid == requestid) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestid, error, const DeepCollectionEquality().hash(data));

  /// Create a copy of MpvResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvResponseImplCopyWith<_$MpvResponseImpl> get copyWith =>
      __$$MpvResponseImplCopyWithImpl<_$MpvResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpvResponseImplToJson(
      this,
    );
  }
}

abstract class _MpvResponse extends MpvResponse {
  const factory _MpvResponse(
      {final int? requestid,
      final String? error,
      final Object? data}) = _$MpvResponseImpl;
  const _MpvResponse._() : super._();

  factory _MpvResponse.fromJson(Map<String, dynamic> json) =
      _$MpvResponseImpl.fromJson;

  @override
  int? get requestid;
  @override
  String? get error;
  @override
  Object? get data;

  /// Create a copy of MpvResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MpvResponseImplCopyWith<_$MpvResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MpvEvent _$MpvEventFromJson(Map<String, dynamic> json) {
  switch (json['event']) {
    case 'property-change':
      return MpvEventPropertyChange.fromJson(json);

    default:
      return MpvEventOther.fromJson(json);
  }
}

/// @nodoc
mixin _$MpvEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String event) other,
    required TResult Function(int id, String name, Object? data) propertyChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String event)? other,
    TResult? Function(int id, String name, Object? data)? propertyChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String event)? other,
    TResult Function(int id, String name, Object? data)? propertyChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpvEventOther value) other,
    required TResult Function(MpvEventPropertyChange value) propertyChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpvEventOther value)? other,
    TResult? Function(MpvEventPropertyChange value)? propertyChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpvEventOther value)? other,
    TResult Function(MpvEventPropertyChange value)? propertyChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MpvEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpvEventCopyWith<$Res> {
  factory $MpvEventCopyWith(MpvEvent value, $Res Function(MpvEvent) then) =
      _$MpvEventCopyWithImpl<$Res, MpvEvent>;
}

/// @nodoc
class _$MpvEventCopyWithImpl<$Res, $Val extends MpvEvent>
    implements $MpvEventCopyWith<$Res> {
  _$MpvEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MpvEventOtherImplCopyWith<$Res> {
  factory _$$MpvEventOtherImplCopyWith(
          _$MpvEventOtherImpl value, $Res Function(_$MpvEventOtherImpl) then) =
      __$$MpvEventOtherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String event});
}

/// @nodoc
class __$$MpvEventOtherImplCopyWithImpl<$Res>
    extends _$MpvEventCopyWithImpl<$Res, _$MpvEventOtherImpl>
    implements _$$MpvEventOtherImplCopyWith<$Res> {
  __$$MpvEventOtherImplCopyWithImpl(
      _$MpvEventOtherImpl _value, $Res Function(_$MpvEventOtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$MpvEventOtherImpl(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpvEventOtherImpl extends MpvEventOther {
  const _$MpvEventOtherImpl(this.event) : super._();

  factory _$MpvEventOtherImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpvEventOtherImplFromJson(json);

  @override
  final String event;

  @override
  String toString() {
    return 'MpvEvent.other(event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvEventOtherImpl &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event);

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvEventOtherImplCopyWith<_$MpvEventOtherImpl> get copyWith =>
      __$$MpvEventOtherImplCopyWithImpl<_$MpvEventOtherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String event) other,
    required TResult Function(int id, String name, Object? data) propertyChange,
  }) {
    return other(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String event)? other,
    TResult? Function(int id, String name, Object? data)? propertyChange,
  }) {
    return other?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String event)? other,
    TResult Function(int id, String name, Object? data)? propertyChange,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpvEventOther value) other,
    required TResult Function(MpvEventPropertyChange value) propertyChange,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpvEventOther value)? other,
    TResult? Function(MpvEventPropertyChange value)? propertyChange,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpvEventOther value)? other,
    TResult Function(MpvEventPropertyChange value)? propertyChange,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MpvEventOtherImplToJson(
      this,
    );
  }
}

abstract class MpvEventOther extends MpvEvent {
  const factory MpvEventOther(final String event) = _$MpvEventOtherImpl;
  const MpvEventOther._() : super._();

  factory MpvEventOther.fromJson(Map<String, dynamic> json) =
      _$MpvEventOtherImpl.fromJson;

  String get event;

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MpvEventOtherImplCopyWith<_$MpvEventOtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MpvEventPropertyChangeImplCopyWith<$Res> {
  factory _$$MpvEventPropertyChangeImplCopyWith(
          _$MpvEventPropertyChangeImpl value,
          $Res Function(_$MpvEventPropertyChangeImpl) then) =
      __$$MpvEventPropertyChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, Object? data});
}

/// @nodoc
class __$$MpvEventPropertyChangeImplCopyWithImpl<$Res>
    extends _$MpvEventCopyWithImpl<$Res, _$MpvEventPropertyChangeImpl>
    implements _$$MpvEventPropertyChangeImplCopyWith<$Res> {
  __$$MpvEventPropertyChangeImplCopyWithImpl(
      _$MpvEventPropertyChangeImpl _value,
      $Res Function(_$MpvEventPropertyChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = freezed,
  }) {
    return _then(_$MpvEventPropertyChangeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpvEventPropertyChangeImpl extends MpvEventPropertyChange {
  const _$MpvEventPropertyChangeImpl(
      {required this.id, required this.name, this.data, final String? $type})
      : $type = $type ?? 'property-change',
        super._();

  factory _$MpvEventPropertyChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpvEventPropertyChangeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Object? data;

  @JsonKey(name: 'event')
  final String $type;

  @override
  String toString() {
    return 'MpvEvent.propertyChange(id: $id, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvEventPropertyChangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(data));

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvEventPropertyChangeImplCopyWith<_$MpvEventPropertyChangeImpl>
      get copyWith => __$$MpvEventPropertyChangeImplCopyWithImpl<
          _$MpvEventPropertyChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String event) other,
    required TResult Function(int id, String name, Object? data) propertyChange,
  }) {
    return propertyChange(id, name, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String event)? other,
    TResult? Function(int id, String name, Object? data)? propertyChange,
  }) {
    return propertyChange?.call(id, name, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String event)? other,
    TResult Function(int id, String name, Object? data)? propertyChange,
    required TResult orElse(),
  }) {
    if (propertyChange != null) {
      return propertyChange(id, name, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpvEventOther value) other,
    required TResult Function(MpvEventPropertyChange value) propertyChange,
  }) {
    return propertyChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpvEventOther value)? other,
    TResult? Function(MpvEventPropertyChange value)? propertyChange,
  }) {
    return propertyChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpvEventOther value)? other,
    TResult Function(MpvEventPropertyChange value)? propertyChange,
    required TResult orElse(),
  }) {
    if (propertyChange != null) {
      return propertyChange(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MpvEventPropertyChangeImplToJson(
      this,
    );
  }
}

abstract class MpvEventPropertyChange extends MpvEvent {
  const factory MpvEventPropertyChange(
      {required final int id,
      required final String name,
      final Object? data}) = _$MpvEventPropertyChangeImpl;
  const MpvEventPropertyChange._() : super._();

  factory MpvEventPropertyChange.fromJson(Map<String, dynamic> json) =
      _$MpvEventPropertyChangeImpl.fromJson;

  int get id;
  String get name;
  Object? get data;

  /// Create a copy of MpvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MpvEventPropertyChangeImplCopyWith<_$MpvEventPropertyChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
