// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TetsuAnimeImpl _$$TetsuAnimeImplFromJson(Map<String, dynamic> json) =>
    _$TetsuAnimeImpl(
      aid: (json['aid'] as num).toInt(),
      dateflags: (json['dateflags'] as num).toInt(),
      year: json['year'] as String,
      atype: json['atype'] as String,
      relatedAidList: (json['related_aid_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
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
      episodes: (json['episodes'] as num).toInt(),
      specialEpCount: (json['special_ep_count'] as num).toInt(),
      airDate: DateTime.parse(json['air_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      picname: json['picname'] as String,
      nsfw: json['nsfw'] as bool,
      characteridList: (json['characterid_list'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      specialsCount: (json['specials_count'] as num).toInt(),
      creditsCount: (json['credits_count'] as num).toInt(),
      otherCount: (json['other_count'] as num).toInt(),
      trailerCount: (json['trailer_count'] as num).toInt(),
      parodyCount: (json['parody_count'] as num).toInt(),
      links: json['links'] == null
          ? emptyLinks()
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      watchProgress: json['watch_progress'] == null
          ? null
          : WatchProgress.fromJson(
              json['watch_progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TetsuAnimeImplToJson(_$TetsuAnimeImpl instance) =>
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
      'links': instance.links,
      'watch_progress': instance.watchProgress,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      animebytesId: (json['animebytes_id'] as num?)?.toInt(),
      anidbId: (json['anidb_id'] as num?)?.toInt(),
      annId: (json['ann_id'] as num?)?.toInt(),
      anilistId: (json['anilist_id'] as num?)?.toInt(),
      malId: (json['mal_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'animebytes_id': instance.animebytesId,
      'anidb_id': instance.anidbId,
      'ann_id': instance.annId,
      'anilist_id': instance.anilistId,
      'mal_id': instance.malId,
    };

_$WatchProgressImpl _$$WatchProgressImplFromJson(Map<String, dynamic> json) =>
    _$WatchProgressImpl(
      lastEid: (json['last_eid'] as num).toInt(),
      episodeProgress: (json['episode_progress'] as num).toDouble(),
      animeProgress: (json['anime_progress'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['last_updated'] as String),
    );

Map<String, dynamic> _$$WatchProgressImplToJson(_$WatchProgressImpl instance) =>
    <String, dynamic>{
      'last_eid': instance.lastEid,
      'episode_progress': instance.episodeProgress,
      'anime_progress': instance.animeProgress,
      'last_updated': instance.lastUpdated.toIso8601String(),
    };
