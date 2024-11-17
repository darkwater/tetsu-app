// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TetsuFileImpl _$$TetsuFileImplFromJson(Map<String, dynamic> json) =>
    _$TetsuFileImpl(
      path: json['path'] as String,
      fid: (json['fid'] as num).toInt(),
      aid: (json['aid'] as num).toInt(),
      eid: (json['eid'] as num).toInt(),
      gid: (json['gid'] as num).toInt(),
      state: (json['state'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      ed2k: json['ed2k'] as String,
      colourDepth: json['colour_depth'] as String,
      quality: json['quality'] as String,
      source: json['source'] as String,
      audioCodecList: (json['audio_codec_list'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      audioBitrateList: (json['audio_bitrate_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      videoCodec: (json['video_codec'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      videoBitrate: (json['video_bitrate'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      videoResolution: (json['video_resolution'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dubLanguage: json['dub_language'] as String,
      subLanguage: json['sub_language'] as String,
      lengthInSeconds: (json['length_in_seconds'] as num).toInt(),
      description: json['description'] as String,
      airedDate: DateTime.parse(json['aired_date'] as String),
    );

Map<String, dynamic> _$$TetsuFileImplToJson(_$TetsuFileImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'fid': instance.fid,
      'aid': instance.aid,
      'eid': instance.eid,
      'gid': instance.gid,
      'state': instance.state,
      'size': instance.size,
      'ed2k': instance.ed2k,
      'colour_depth': instance.colourDepth,
      'quality': instance.quality,
      'source': instance.source,
      'audio_codec_list': instance.audioCodecList,
      'audio_bitrate_list': instance.audioBitrateList,
      'video_codec': instance.videoCodec,
      'video_bitrate': instance.videoBitrate,
      'video_resolution': instance.videoResolution,
      'dub_language': instance.dubLanguage,
      'sub_language': instance.subLanguage,
      'length_in_seconds': instance.lengthInSeconds,
      'description': instance.description,
      'aired_date': instance.airedDate.toIso8601String(),
    };
