// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimebytesSearchResponseImpl _$$AnimebytesSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimebytesSearchResponseImpl(
      results: (json['Results'] as num).toInt(),
      pagination:
          Pagination.fromJson(json['Pagination'] as Map<String, dynamic>),
      matches: (json['Matches'] as num).toInt(),
      groups: (json['Groups'] as List<dynamic>?)
              ?.map((e) =>
                  AnimebytesSearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$AnimebytesSearchResponseImplToJson(
        _$AnimebytesSearchResponseImpl instance) =>
    <String, dynamic>{
      'Results': instance.results,
      'Pagination': instance.pagination,
      'Matches': instance.matches,
      'Groups': instance.groups,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      current: (json['Current'] as num).toInt(),
      max: (json['Max'] as num).toDouble(),
      limit: Limit.fromJson(json['Limit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'Current': instance.current,
      'Max': instance.max,
      'Limit': instance.limit,
    };

_$LimitImpl _$$LimitImplFromJson(Map<String, dynamic> json) => _$LimitImpl(
      min: (json['Min'] as num).toInt(),
      coerced: (json['Coerced'] as num).toInt(),
      max: (json['Max'] as num).toInt(),
    );

Map<String, dynamic> _$$LimitImplToJson(_$LimitImpl instance) =>
    <String, dynamic>{
      'Min': instance.min,
      'Coerced': instance.coerced,
      'Max': instance.max,
    };

_$AnimebytesSearchResultImpl _$$AnimebytesSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimebytesSearchResultImpl(
      id: (json['ID'] as num).toInt(),
      categoryName: json['CategoryName'] as String,
      groupName: json['GroupName'] as String,
      seriesId: (json['SeriesId'] as num?)?.toInt(),
      seriesName: json['SeriesName'] as String,
      year: json['Year'] as String?,
      image: json['Image'] as String?,
      links: json['Links'] == null ? {} : _emptyMapIsList(json['Links']),
      descriptionHtml: json['DescriptionHTML'] as String?,
      epCount: (json['EpCount'] as num?)?.toInt(),
      studioList: _studioListFromJson(json['StudioList']),
      incomplete: json['Incomplete'] as bool?,
      ongoing: json['Ongoing'] as bool?,
      torrents: (json['Torrents'] as List<dynamic>)
          .map((e) => AnimebytesTorrent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimebytesSearchResultImplToJson(
        _$AnimebytesSearchResultImpl instance) =>
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

_$AnimebytesTorrentImpl _$$AnimebytesTorrentImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimebytesTorrentImpl(
      id: (json['ID'] as num).toInt(),
      editionData: json['EditionData'],
      rawDownMultiplier: (json['RawDownMultiplier'] as num).toDouble(),
      rawUpMultiplier: (json['RawUpMultiplier'] as num).toDouble(),
      link: json['Link'] as String,
      property: json['Property'] as String,
      snatched: (json['Snatched'] as num).toInt(),
      seeders: (json['Seeders'] as num).toInt(),
      leechers: (json['Leechers'] as num).toInt(),
      status: (json['Status'] as num).toInt(),
      size: (json['Size'] as num).toInt(),
      fileCount: (json['FileCount'] as num).toInt(),
      fileList: (json['FileList'] as List<dynamic>)
          .map((e) => AnimebytesTorrentFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploadTime: DateTime.parse(json['UploadTime'] as String),
    );

Map<String, dynamic> _$$AnimebytesTorrentImplToJson(
        _$AnimebytesTorrentImpl instance) =>
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

_$AnimebytesTorrentFileImpl _$$AnimebytesTorrentFileImplFromJson(
        Map<String, dynamic> json) =>
    _$AnimebytesTorrentFileImpl(
      filename: json['filename'] as String,
      size: (json['size'] as num).toInt(),
    );

Map<String, dynamic> _$$AnimebytesTorrentFileImplToJson(
        _$AnimebytesTorrentFileImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'size': instance.size,
    };
