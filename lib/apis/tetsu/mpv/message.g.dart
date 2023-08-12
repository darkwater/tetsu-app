// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WsMpvMessageControl _$$WsMpvMessageControlFromJson(
        Map<String, dynamic> json) =>
    _$WsMpvMessageControl(
      ControlMessage.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$WsMpvMessageControlToJson(
        _$WsMpvMessageControl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'kind': instance.$type,
    };

_$WsMpvMessageMpv _$$WsMpvMessageMpvFromJson(Map<String, dynamic> json) =>
    _$WsMpvMessageMpv(
      json['data'] as Map<String, dynamic>,
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$WsMpvMessageMpvToJson(_$WsMpvMessageMpv instance) =>
    <String, dynamic>{
      'data': instance.data,
      'kind': instance.$type,
    };

_$ControlMessageStarted _$$ControlMessageStartedFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStarted(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStartedToJson(
        _$ControlMessageStarted instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStart _$$ControlMessageStartFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStart(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStartToJson(
        _$ControlMessageStart instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStopped _$$ControlMessageStoppedFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStopped(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStoppedToJson(
        _$ControlMessageStopped instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStop _$$ControlMessageStopFromJson(Map<String, dynamic> json) =>
    _$ControlMessageStop(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStopToJson(
        _$ControlMessageStop instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$_MpvRequest _$$_MpvRequestFromJson(Map<String, dynamic> json) =>
    _$_MpvRequest(
      command: json['command'] as List<dynamic>,
      requestId: json['request_id'] as int?,
      async: json['async'] as bool?,
    );

Map<String, dynamic> _$$_MpvRequestToJson(_$_MpvRequest instance) {
  final val = <String, dynamic>{
    'command': instance.command,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('request_id', instance.requestId);
  writeNotNull('async', instance.async);
  return val;
}

_$_MpvResponse _$$_MpvResponseFromJson(Map<String, dynamic> json) =>
    _$_MpvResponse(
      requestid: json['requestid'] as int?,
      error: json['error'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$_MpvResponseToJson(_$_MpvResponse instance) =>
    <String, dynamic>{
      'requestid': instance.requestid,
      'error': instance.error,
      'data': instance.data,
    };

_$MpvEventOther _$$MpvEventOtherFromJson(Map<String, dynamic> json) =>
    _$MpvEventOther(
      json['event'] as String,
    );

Map<String, dynamic> _$$MpvEventOtherToJson(_$MpvEventOther instance) =>
    <String, dynamic>{
      'event': instance.event,
    };

_$MpvEventPropertyChange _$$MpvEventPropertyChangeFromJson(
        Map<String, dynamic> json) =>
    _$MpvEventPropertyChange(
      id: json['id'] as int,
      name: json['name'] as String,
      data: json['data'],
      $type: json['event'] as String?,
    );

Map<String, dynamic> _$$MpvEventPropertyChangeToJson(
        _$MpvEventPropertyChange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
      'event': instance.$type,
    };
