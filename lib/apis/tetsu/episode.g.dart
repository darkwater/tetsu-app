// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TetsuEpisode _$$_TetsuEpisodeFromJson(Map<String, dynamic> json) =>
    _$_TetsuEpisode(
      eid: json['eid'] as int,
      aid: json['aid'] as int,
      length: json['length'] as int,
      rating: json['rating'] as int,
      votes: json['votes'] as int,
      epno: json['epno'] as String,
      eng: json['eng'] as String,
      romaji: json['romaji'] as String,
      kanji: json['kanji'] as String,
      aired: DateTime.parse(json['aired'] as String),
      etype: json['etype'] as int,
    );

Map<String, dynamic> _$$_TetsuEpisodeToJson(_$_TetsuEpisode instance) =>
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
