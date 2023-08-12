import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@Freezed(unionKey: "kind", unionValueCase: FreezedUnionCase.pascal)
class WsMpvMessage with _$WsMpvMessage {
  const WsMpvMessage._();

  const factory WsMpvMessage.control(ControlMessage data) = WsMpvMessageControl;
  const factory WsMpvMessage.mpv(Map<String, Object?> data) = WsMpvMessageMpv;

  factory WsMpvMessage.fromJson(Map<String, Object?> json) =>
      _$WsMpvMessageFromJson(json);
}

@Freezed(unionKey: "kind", unionValueCase: FreezedUnionCase.pascal)
class ControlMessage with _$ControlMessage {
  const ControlMessage._();

  const factory ControlMessage.started() = ControlMessageStarted;
  const factory ControlMessage.start() = ControlMessageStart;
  const factory ControlMessage.stopped() = ControlMessageStopped;
  const factory ControlMessage.stop() = ControlMessageStop;

  factory ControlMessage.fromJson(Map<String, Object?> json) =>
      _$ControlMessageFromJson(json);
}

@freezed
class MpvRequest with _$MpvRequest {
  const MpvRequest._();

  // { "command": ["screenshot"], "request_id": 123, "async": true }
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory MpvRequest({
    required List<dynamic> command,
    int? requestId,
    bool? async,
  }) = _MpvRequest;

  factory MpvRequest.fromJson(Map<String, Object?> json) =>
      _$MpvRequestFromJson(json);
}

@freezed
class MpvResponse with _$MpvResponse {
  const MpvResponse._();

  const factory MpvResponse({
    int? requestid,
    String? error,
    Object? data,
  }) = _MpvResponse;

  factory MpvResponse.fromJson(Map<String, Object?> json) =>
      _$MpvResponseFromJson(json);
}

@Freezed(
  unionKey: "event",
  fallbackUnion: "other",
  unionValueCase: FreezedUnionCase.kebab,
)
class MpvEvent with _$MpvEvent {
  const MpvEvent._();

  const factory MpvEvent.other(String event) = MpvEventOther;
  const factory MpvEvent.propertyChange({
    required int id,
    required String name,
    Object? data,
  }) = MpvEventPropertyChange;

  factory MpvEvent.fromJson(Map<String, Object?> json) =>
      _$MpvEventFromJson(json);
}
