// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TetsuAnime _$$_TetsuAnimeFromJson(Map<String, dynamic> json) =>
    _$_TetsuAnime(
      aid: json['aid'] as int,
      dateflags: json['dateflags'] as int,
      year: json['year'] as String,
      atype: json['atype'] as String,
      relatedAidList: (json['related_aid_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      relatedAidType: (json['related_aid_type'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      romajiName: json['romaji_name'] as String,
      kanjiName: json['kanji_name'] as String,
      englishName: json['english_name'] as String,
      shortNameList: (json['short_name_list'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      episodes: json['episodes'] as int,
      specialEpCount: json['special_ep_count'] as int,
      airDate: DateTime.parse(json['air_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      picname: json['picname'] as String,
      nsfw: json['nsfw'] as bool,
      characteridList: (json['characterid_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      specialsCount: json['specials_count'] as int,
      creditsCount: json['credits_count'] as int,
      otherCount: json['other_count'] as int,
      trailerCount: json['trailer_count'] as int,
      parodyCount: json['parody_count'] as int,
    );

Map<String, dynamic> _$$_TetsuAnimeToJson(_$_TetsuAnime instance) =>
    <String, dynamic>{
      'aid': instance.aid,
      'dateflags': instance.dateflags,
      'year': instance.year,
      'atype': instance.atype,
      'related_aid_list': instance.relatedAidList,
      'related_aid_type': instance.relatedAidType,
      'romaji_name': instance.romajiName,
      'kanji_name': instance.kanjiName,
      'english_name': instance.englishName,
      'short_name_list': instance.shortNameList,
      'episodes': instance.episodes,
      'special_ep_count': instance.specialEpCount,
      'air_date': instance.airDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'picname': instance.picname,
      'nsfw': instance.nsfw,
      'characterid_list': instance.characteridList,
      'specials_count': instance.specialsCount,
      'credits_count': instance.creditsCount,
      'other_count': instance.otherCount,
      'trailer_count': instance.trailerCount,
      'parody_count': instance.parodyCount,
    };
