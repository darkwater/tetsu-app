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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$WsMpvMessageControlCopyWith<$Res> {
  factory _$$WsMpvMessageControlCopyWith(_$WsMpvMessageControl value,
          $Res Function(_$WsMpvMessageControl) then) =
      __$$WsMpvMessageControlCopyWithImpl<$Res>;
  @useResult
  $Res call({ControlMessage data});

  $ControlMessageCopyWith<$Res> get data;
}

/// @nodoc
class __$$WsMpvMessageControlCopyWithImpl<$Res>
    extends _$WsMpvMessageCopyWithImpl<$Res, _$WsMpvMessageControl>
    implements _$$WsMpvMessageControlCopyWith<$Res> {
  __$$WsMpvMessageControlCopyWithImpl(
      _$WsMpvMessageControl _value, $Res Function(_$WsMpvMessageControl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WsMpvMessageControl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ControlMessage,
    ));
  }

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
class _$WsMpvMessageControl extends WsMpvMessageControl {
  const _$WsMpvMessageControl(this.data, {final String? $type})
      : $type = $type ?? 'Control',
        super._();

  factory _$WsMpvMessageControl.fromJson(Map<String, dynamic> json) =>
      _$$WsMpvMessageControlFromJson(json);

  @override
  final ControlMessage data;

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'WsMpvMessage.control(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMpvMessageControl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMpvMessageControlCopyWith<_$WsMpvMessageControl> get copyWith =>
      __$$WsMpvMessageControlCopyWithImpl<_$WsMpvMessageControl>(
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
    return _$$WsMpvMessageControlToJson(
      this,
    );
  }
}

abstract class WsMpvMessageControl extends WsMpvMessage {
  const factory WsMpvMessageControl(final ControlMessage data) =
      _$WsMpvMessageControl;
  const WsMpvMessageControl._() : super._();

  factory WsMpvMessageControl.fromJson(Map<String, dynamic> json) =
      _$WsMpvMessageControl.fromJson;

  @override
  ControlMessage get data;
  @JsonKey(ignore: true)
  _$$WsMpvMessageControlCopyWith<_$WsMpvMessageControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WsMpvMessageMpvCopyWith<$Res> {
  factory _$$WsMpvMessageMpvCopyWith(
          _$WsMpvMessageMpv value, $Res Function(_$WsMpvMessageMpv) then) =
      __$$WsMpvMessageMpvCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Object?> data});
}

/// @nodoc
class __$$WsMpvMessageMpvCopyWithImpl<$Res>
    extends _$WsMpvMessageCopyWithImpl<$Res, _$WsMpvMessageMpv>
    implements _$$WsMpvMessageMpvCopyWith<$Res> {
  __$$WsMpvMessageMpvCopyWithImpl(
      _$WsMpvMessageMpv _value, $Res Function(_$WsMpvMessageMpv) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WsMpvMessageMpv(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WsMpvMessageMpv extends WsMpvMessageMpv {
  const _$WsMpvMessageMpv(final Map<String, Object?> data,
      {final String? $type})
      : _data = data,
        $type = $type ?? 'Mpv',
        super._();

  factory _$WsMpvMessageMpv.fromJson(Map<String, dynamic> json) =>
      _$$WsMpvMessageMpvFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsMpvMessageMpv &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WsMpvMessageMpvCopyWith<_$WsMpvMessageMpv> get copyWith =>
      __$$WsMpvMessageMpvCopyWithImpl<_$WsMpvMessageMpv>(this, _$identity);

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
    return _$$WsMpvMessageMpvToJson(
      this,
    );
  }
}

abstract class WsMpvMessageMpv extends WsMpvMessage {
  const factory WsMpvMessageMpv(final Map<String, Object?> data) =
      _$WsMpvMessageMpv;
  const WsMpvMessageMpv._() : super._();

  factory WsMpvMessageMpv.fromJson(Map<String, dynamic> json) =
      _$WsMpvMessageMpv.fromJson;

  @override
  Map<String, Object?> get data;
  @JsonKey(ignore: true)
  _$$WsMpvMessageMpvCopyWith<_$WsMpvMessageMpv> get copyWith =>
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
}

/// @nodoc
abstract class _$$ControlMessageStartedCopyWith<$Res> {
  factory _$$ControlMessageStartedCopyWith(_$ControlMessageStarted value,
          $Res Function(_$ControlMessageStarted) then) =
      __$$ControlMessageStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStartedCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStarted>
    implements _$$ControlMessageStartedCopyWith<$Res> {
  __$$ControlMessageStartedCopyWithImpl(_$ControlMessageStarted _value,
      $Res Function(_$ControlMessageStarted) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStarted extends ControlMessageStarted {
  const _$ControlMessageStarted({final String? $type})
      : $type = $type ?? 'Started',
        super._();

  factory _$ControlMessageStarted.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStartedFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ControlMessageStarted);
  }

  @JsonKey(ignore: true)
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
    return _$$ControlMessageStartedToJson(
      this,
    );
  }
}

abstract class ControlMessageStarted extends ControlMessage {
  const factory ControlMessageStarted() = _$ControlMessageStarted;
  const ControlMessageStarted._() : super._();

  factory ControlMessageStarted.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStarted.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStartCopyWith<$Res> {
  factory _$$ControlMessageStartCopyWith(_$ControlMessageStart value,
          $Res Function(_$ControlMessageStart) then) =
      __$$ControlMessageStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStartCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStart>
    implements _$$ControlMessageStartCopyWith<$Res> {
  __$$ControlMessageStartCopyWithImpl(
      _$ControlMessageStart _value, $Res Function(_$ControlMessageStart) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStart extends ControlMessageStart {
  const _$ControlMessageStart({final String? $type})
      : $type = $type ?? 'Start',
        super._();

  factory _$ControlMessageStart.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStartFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ControlMessageStart);
  }

  @JsonKey(ignore: true)
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
    return _$$ControlMessageStartToJson(
      this,
    );
  }
}

abstract class ControlMessageStart extends ControlMessage {
  const factory ControlMessageStart() = _$ControlMessageStart;
  const ControlMessageStart._() : super._();

  factory ControlMessageStart.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStart.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStoppedCopyWith<$Res> {
  factory _$$ControlMessageStoppedCopyWith(_$ControlMessageStopped value,
          $Res Function(_$ControlMessageStopped) then) =
      __$$ControlMessageStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStoppedCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStopped>
    implements _$$ControlMessageStoppedCopyWith<$Res> {
  __$$ControlMessageStoppedCopyWithImpl(_$ControlMessageStopped _value,
      $Res Function(_$ControlMessageStopped) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStopped extends ControlMessageStopped {
  const _$ControlMessageStopped({final String? $type})
      : $type = $type ?? 'Stopped',
        super._();

  factory _$ControlMessageStopped.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStoppedFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ControlMessageStopped);
  }

  @JsonKey(ignore: true)
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
    return _$$ControlMessageStoppedToJson(
      this,
    );
  }
}

abstract class ControlMessageStopped extends ControlMessage {
  const factory ControlMessageStopped() = _$ControlMessageStopped;
  const ControlMessageStopped._() : super._();

  factory ControlMessageStopped.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStopped.fromJson;
}

/// @nodoc
abstract class _$$ControlMessageStopCopyWith<$Res> {
  factory _$$ControlMessageStopCopyWith(_$ControlMessageStop value,
          $Res Function(_$ControlMessageStop) then) =
      __$$ControlMessageStopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ControlMessageStopCopyWithImpl<$Res>
    extends _$ControlMessageCopyWithImpl<$Res, _$ControlMessageStop>
    implements _$$ControlMessageStopCopyWith<$Res> {
  __$$ControlMessageStopCopyWithImpl(
      _$ControlMessageStop _value, $Res Function(_$ControlMessageStop) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ControlMessageStop extends ControlMessageStop {
  const _$ControlMessageStop({final String? $type})
      : $type = $type ?? 'Stop',
        super._();

  factory _$ControlMessageStop.fromJson(Map<String, dynamic> json) =>
      _$$ControlMessageStopFromJson(json);

  @JsonKey(name: 'kind')
  final String $type;

  @override
  String toString() {
    return 'ControlMessage.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ControlMessageStop);
  }

  @JsonKey(ignore: true)
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
    return _$$ControlMessageStopToJson(
      this,
    );
  }
}

abstract class ControlMessageStop extends ControlMessage {
  const factory ControlMessageStop() = _$ControlMessageStop;
  const ControlMessageStop._() : super._();

  factory ControlMessageStop.fromJson(Map<String, dynamic> json) =
      _$ControlMessageStop.fromJson;
}

MpvRequest _$MpvRequestFromJson(Map<String, dynamic> json) {
  return _MpvRequest.fromJson(json);
}

/// @nodoc
mixin _$MpvRequest {
  List<dynamic> get command => throw _privateConstructorUsedError;
  int? get requestId => throw _privateConstructorUsedError;
  bool? get async => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_MpvRequestCopyWith<$Res>
    implements $MpvRequestCopyWith<$Res> {
  factory _$$_MpvRequestCopyWith(
          _$_MpvRequest value, $Res Function(_$_MpvRequest) then) =
      __$$_MpvRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> command, int? requestId, bool? async});
}

/// @nodoc
class __$$_MpvRequestCopyWithImpl<$Res>
    extends _$MpvRequestCopyWithImpl<$Res, _$_MpvRequest>
    implements _$$_MpvRequestCopyWith<$Res> {
  __$$_MpvRequestCopyWithImpl(
      _$_MpvRequest _value, $Res Function(_$_MpvRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? requestId = freezed,
    Object? async = freezed,
  }) {
    return _then(_$_MpvRequest(
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
class _$_MpvRequest extends _MpvRequest {
  const _$_MpvRequest(
      {required final List<dynamic> command, this.requestId, this.async})
      : _command = command,
        super._();

  factory _$_MpvRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MpvRequestFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpvRequest &&
            const DeepCollectionEquality().equals(other._command, _command) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.async, async) || other.async == async));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_command), requestId, async);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpvRequestCopyWith<_$_MpvRequest> get copyWith =>
      __$$_MpvRequestCopyWithImpl<_$_MpvRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpvRequestToJson(
      this,
    );
  }
}

abstract class _MpvRequest extends MpvRequest {
  const factory _MpvRequest(
      {required final List<dynamic> command,
      final int? requestId,
      final bool? async}) = _$_MpvRequest;
  const _MpvRequest._() : super._();

  factory _MpvRequest.fromJson(Map<String, dynamic> json) =
      _$_MpvRequest.fromJson;

  @override
  List<dynamic> get command;
  @override
  int? get requestId;
  @override
  bool? get async;
  @override
  @JsonKey(ignore: true)
  _$$_MpvRequestCopyWith<_$_MpvRequest> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_MpvResponseCopyWith<$Res>
    implements $MpvResponseCopyWith<$Res> {
  factory _$$_MpvResponseCopyWith(
          _$_MpvResponse value, $Res Function(_$_MpvResponse) then) =
      __$$_MpvResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? requestid, String? error, Object? data});
}

/// @nodoc
class __$$_MpvResponseCopyWithImpl<$Res>
    extends _$MpvResponseCopyWithImpl<$Res, _$_MpvResponse>
    implements _$$_MpvResponseCopyWith<$Res> {
  __$$_MpvResponseCopyWithImpl(
      _$_MpvResponse _value, $Res Function(_$_MpvResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestid = freezed,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MpvResponse(
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
class _$_MpvResponse extends _MpvResponse {
  const _$_MpvResponse({this.requestid, this.error, this.data}) : super._();

  factory _$_MpvResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MpvResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpvResponse &&
            (identical(other.requestid, requestid) ||
                other.requestid == requestid) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestid, error, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpvResponseCopyWith<_$_MpvResponse> get copyWith =>
      __$$_MpvResponseCopyWithImpl<_$_MpvResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpvResponseToJson(
      this,
    );
  }
}

abstract class _MpvResponse extends MpvResponse {
  const factory _MpvResponse(
      {final int? requestid,
      final String? error,
      final Object? data}) = _$_MpvResponse;
  const _MpvResponse._() : super._();

  factory _MpvResponse.fromJson(Map<String, dynamic> json) =
      _$_MpvResponse.fromJson;

  @override
  int? get requestid;
  @override
  String? get error;
  @override
  Object? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MpvResponseCopyWith<_$_MpvResponse> get copyWith =>
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
}

/// @nodoc
abstract class _$$MpvEventOtherCopyWith<$Res> {
  factory _$$MpvEventOtherCopyWith(
          _$MpvEventOther value, $Res Function(_$MpvEventOther) then) =
      __$$MpvEventOtherCopyWithImpl<$Res>;
  @useResult
  $Res call({String event});
}

/// @nodoc
class __$$MpvEventOtherCopyWithImpl<$Res>
    extends _$MpvEventCopyWithImpl<$Res, _$MpvEventOther>
    implements _$$MpvEventOtherCopyWith<$Res> {
  __$$MpvEventOtherCopyWithImpl(
      _$MpvEventOther _value, $Res Function(_$MpvEventOther) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$MpvEventOther(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpvEventOther extends MpvEventOther {
  const _$MpvEventOther(this.event) : super._();

  factory _$MpvEventOther.fromJson(Map<String, dynamic> json) =>
      _$$MpvEventOtherFromJson(json);

  @override
  final String event;

  @override
  String toString() {
    return 'MpvEvent.other(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvEventOther &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvEventOtherCopyWith<_$MpvEventOther> get copyWith =>
      __$$MpvEventOtherCopyWithImpl<_$MpvEventOther>(this, _$identity);

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
    return _$$MpvEventOtherToJson(
      this,
    );
  }
}

abstract class MpvEventOther extends MpvEvent {
  const factory MpvEventOther(final String event) = _$MpvEventOther;
  const MpvEventOther._() : super._();

  factory MpvEventOther.fromJson(Map<String, dynamic> json) =
      _$MpvEventOther.fromJson;

  String get event;
  @JsonKey(ignore: true)
  _$$MpvEventOtherCopyWith<_$MpvEventOther> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MpvEventPropertyChangeCopyWith<$Res> {
  factory _$$MpvEventPropertyChangeCopyWith(_$MpvEventPropertyChange value,
          $Res Function(_$MpvEventPropertyChange) then) =
      __$$MpvEventPropertyChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, Object? data});
}

/// @nodoc
class __$$MpvEventPropertyChangeCopyWithImpl<$Res>
    extends _$MpvEventCopyWithImpl<$Res, _$MpvEventPropertyChange>
    implements _$$MpvEventPropertyChangeCopyWith<$Res> {
  __$$MpvEventPropertyChangeCopyWithImpl(_$MpvEventPropertyChange _value,
      $Res Function(_$MpvEventPropertyChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = freezed,
  }) {
    return _then(_$MpvEventPropertyChange(
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
class _$MpvEventPropertyChange extends MpvEventPropertyChange {
  const _$MpvEventPropertyChange(
      {required this.id, required this.name, this.data, final String? $type})
      : $type = $type ?? 'property-change',
        super._();

  factory _$MpvEventPropertyChange.fromJson(Map<String, dynamic> json) =>
      _$$MpvEventPropertyChangeFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpvEventPropertyChange &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpvEventPropertyChangeCopyWith<_$MpvEventPropertyChange> get copyWith =>
      __$$MpvEventPropertyChangeCopyWithImpl<_$MpvEventPropertyChange>(
          this, _$identity);

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
    return _$$MpvEventPropertyChangeToJson(
      this,
    );
  }
}

abstract class MpvEventPropertyChange extends MpvEvent {
  const factory MpvEventPropertyChange(
      {required final int id,
      required final String name,
      final Object? data}) = _$MpvEventPropertyChange;
  const MpvEventPropertyChange._() : super._();

  factory MpvEventPropertyChange.fromJson(Map<String, dynamic> json) =
      _$MpvEventPropertyChange.fromJson;

  int get id;
  String get name;
  Object? get data;
  @JsonKey(ignore: true)
  _$$MpvEventPropertyChangeCopyWith<_$MpvEventPropertyChange> get copyWith =>
      throw _privateConstructorUsedError;
}
