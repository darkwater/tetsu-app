// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WsMpvMessageControlImpl _$$WsMpvMessageControlImplFromJson(
        Map<String, dynamic> json) =>
    _$WsMpvMessageControlImpl(
      ControlMessage.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$WsMpvMessageControlImplToJson(
        _$WsMpvMessageControlImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'kind': instance.$type,
    };

_$WsMpvMessageMpvImpl _$$WsMpvMessageMpvImplFromJson(
        Map<String, dynamic> json) =>
    _$WsMpvMessageMpvImpl(
      json['data'] as Map<String, dynamic>,
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$WsMpvMessageMpvImplToJson(
        _$WsMpvMessageMpvImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'kind': instance.$type,
    };

_$ControlMessageStartedImpl _$$ControlMessageStartedImplFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStartedImpl(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStartedImplToJson(
        _$ControlMessageStartedImpl instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStartImpl _$$ControlMessageStartImplFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStartImpl(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStartImplToJson(
        _$ControlMessageStartImpl instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStoppedImpl _$$ControlMessageStoppedImplFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStoppedImpl(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStoppedImplToJson(
        _$ControlMessageStoppedImpl instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$ControlMessageStopImpl _$$ControlMessageStopImplFromJson(
        Map<String, dynamic> json) =>
    _$ControlMessageStopImpl(
      $type: json['kind'] as String?,
    );

Map<String, dynamic> _$$ControlMessageStopImplToJson(
        _$ControlMessageStopImpl instance) =>
    <String, dynamic>{
      'kind': instance.$type,
    };

_$MpvRequestImpl _$$MpvRequestImplFromJson(Map<String, dynamic> json) =>
    _$MpvRequestImpl(
      command: json['command'] as List<dynamic>,
      requestId: (json['request_id'] as num?)?.toInt(),
      async: json['async'] as bool?,
    );

Map<String, dynamic> _$$MpvRequestImplToJson(_$MpvRequestImpl instance) {
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

_$MpvResponseImpl _$$MpvResponseImplFromJson(Map<String, dynamic> json) =>
    _$MpvResponseImpl(
      requestid: (json['requestid'] as num?)?.toInt(),
      error: json['error'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$MpvResponseImplToJson(_$MpvResponseImpl instance) =>
    <String, dynamic>{
      'requestid': instance.requestid,
      'error': instance.error,
      'data': instance.data,
    };

_$MpvEventOtherImpl _$$MpvEventOtherImplFromJson(Map<String, dynamic> json) =>
    _$MpvEventOtherImpl(
      json['event'] as String,
    );

Map<String, dynamic> _$$MpvEventOtherImplToJson(_$MpvEventOtherImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
    };

_$MpvEventPropertyChangeImpl _$$MpvEventPropertyChangeImplFromJson(
        Map<String, dynamic> json) =>
    _$MpvEventPropertyChangeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      data: json['data'],
      $type: json['event'] as String?,
    );

Map<String, dynamic> _$$MpvEventPropertyChangeImplToJson(
        _$MpvEventPropertyChangeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
      'event': instance.$type,
    };
