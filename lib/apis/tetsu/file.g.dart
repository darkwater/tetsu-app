// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TetsuFile _$$_TetsuFileFromJson(Map<String, dynamic> json) => _$_TetsuFile(
      path: json['path'] as String,
      fid: json['fid'] as int,
      aid: json['aid'] as int,
      eid: json['eid'] as int,
      gid: json['gid'] as int,
      state: json['state'] as int,
      size: json['size'] as int,
      ed2k: json['ed2k'] as String,
      colourDepth: json['colour_depth'] as String,
      quality: json['quality'] as String,
      source: json['source'] as String,
      audioCodecList: (json['audio_codec_list'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      audioBitrateList: (json['audio_bitrate_list'] as List<dynamic>)
          .map((e) => e as int)
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
      lengthInSeconds: json['length_in_seconds'] as int,
      description: json['description'] as String,
      airedDate: DateTime.parse(json['aired_date'] as String),
    );

Map<String, dynamic> _$$_TetsuFileToJson(_$_TetsuFile instance) =>
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
