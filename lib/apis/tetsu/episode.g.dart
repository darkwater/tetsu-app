// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TetsuEpisodeImpl _$$TetsuEpisodeImplFromJson(Map<String, dynamic> json) =>
    _$TetsuEpisodeImpl(
      eid: (json['eid'] as num).toInt(),
      aid: (json['aid'] as num).toInt(),
      length: (json['length'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      votes: (json['votes'] as num).toInt(),
      epno: json['epno'] as String,
      eng: json['eng'] as String,
      romaji: json['romaji'] as String,
      kanji: json['kanji'] as String,
      aired: DateTime.parse(json['aired'] as String),
      etype: (json['etype'] as num).toInt(),
    );

Map<String, dynamic> _$$TetsuEpisodeImplToJson(_$TetsuEpisodeImpl instance) =>
    <String, dynamic>{
      'eid': instance.eid,
      'aid': instance.aid,
      'length': instance.length,
      'rating': instance.rating,
      'votes': instance.votes,
      'epno': instance.epno,
      'eng': instance.eng,
      'romaji': instance.romaji,
      'kanji': instance.kanji,
      'aired': instance.aired.toIso8601String(),
      'etype': instance.etype,
    };
