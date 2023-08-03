// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnimebytesSearchResponse _$$_AnimebytesSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AnimebytesSearchResponse(
      results: json['Results'] as int,
      pagination:
          Pagination.fromJson(json['Pagination'] as Map<String, dynamic>),
      matches: json['Matches'] as int,
      groups: (json['Groups'] as List<dynamic>?)
              ?.map((e) =>
                  AnimebytesSearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_AnimebytesSearchResponseToJson(
        _$_AnimebytesSearchResponse instance) =>
    <String, dynamic>{
      'Results': instance.results,
      'Pagination': instance.pagination,
      'Matches': instance.matches,
      'Groups': instance.groups,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      current: json['Current'] as int,
      max: (json['Max'] as num).toDouble(),
      limit: Limit.fromJson(json['Limit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'Current': instance.current,
      'Max': instance.max,
      'Limit': instance.limit,
    };

_$_Limit _$$_LimitFromJson(Map<String, dynamic> json) => _$_Limit(
      min: json['Min'] as int,
      coerced: json['Coerced'] as int,
      max: json['Max'] as int,
    );

Map<String, dynamic> _$$_LimitToJson(_$_Limit instance) => <String, dynamic>{
      'Min': instance.min,
      'Coerced': instance.coerced,
      'Max': instance.max,
    };

_$_AnimebytesSearchResult _$$_AnimebytesSearchResultFromJson(
        Map<String, dynamic> json) =>
    _$_AnimebytesSearchResult(
      id: json['ID'] as int,
      categoryName: json['CategoryName'] as String,
      groupName: json['GroupName'] as String,
      seriesId: json['SeriesId'] as int?,
      seriesName: json['SeriesName'] as String,
      year: json['Year'] as String?,
      image: json['Image'] as String?,
      links: json['Links'] == null ? {} : _emptyMapIsList(json['Links']),
      descriptionHtml: json['DescriptionHTML'] as String?,
      epCount: json['EpCount'] as int?,
      studioList: _studioListFromJson(json['StudioList']),
      incomplete: json['Incomplete'] as bool?,
      ongoing: json['Ongoing'] as bool?,
      torrents: (json['Torrents'] as List<dynamic>)
          .map((e) => AnimebytesTorrent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnimebytesSearchResultToJson(
        _$_AnimebytesSearchResult instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CategoryName': instance.categoryName,
      'GroupName': instance.groupName,
      'SeriesId': instance.seriesId,
      'SeriesName': instance.seriesName,
      'Year': instance.year,
      'Image': instance.image,
      'Links': instance.links,
      'DescriptionHTML': instance.descriptionHtml,
      'EpCount': instance.epCount,
      'StudioList': instance.studioList,
      'Incomplete': instance.incomplete,
      'Ongoing': instance.ongoing,
      'Torrents': instance.torrents,
    };

_$_AnimebytesTorrent _$$_AnimebytesTorrentFromJson(Map<String, dynamic> json) =>
    _$_AnimebytesTorrent(
      id: json['ID'] as int,
      editionData: json['EditionData'],
      rawDownMultiplier: (json['RawDownMultiplier'] as num).toDouble(),
      rawUpMultiplier: (json['RawUpMultiplier'] as num).toDouble(),
      link: json['Link'] as String,
      property: json['Property'] as String,
      snatched: json['Snatched'] as int,
      seeders: json['Seeders'] as int,
      leechers: json['Leechers'] as int,
      status: json['Status'] as int,
      size: json['Size'] as int,
      fileCount: json['FileCount'] as int,
      fileList: (json['FileList'] as List<dynamic>)
          .map((e) => AnimebytesTorrentFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploadTime: DateTime.parse(json['UploadTime'] as String),
    );

Map<String, dynamic> _$$_AnimebytesTorrentToJson(
        _$_AnimebytesTorrent instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'EditionData': instance.editionData,
      'RawDownMultiplier': instance.rawDownMultiplier,
      'RawUpMultiplier': instance.rawUpMultiplier,
      'Link': instance.link,
      'Property': instance.property,
      'Snatched': instance.snatched,
      'Seeders': instance.seeders,
      'Leechers': instance.leechers,
      'Status': instance.status,
      'Size': instance.size,
      'FileCount': instance.fileCount,
      'FileList': instance.fileList,
      'UploadTime': instance.uploadTime.toIso8601String(),
    };

_$_AnimebytesTorrentFile _$$_AnimebytesTorrentFileFromJson(
        Map<String, dynamic> json) =>
    _$_AnimebytesTorrentFile(
      filename: json['filename'] as String,
      size: json['size'] as int,
    );

Map<String, dynamic> _$$_AnimebytesTorrentFileToJson(
        _$_AnimebytesTorrentFile instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'size': instance.size,
    };
