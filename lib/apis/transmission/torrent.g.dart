// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TorrentImpl _$$TorrentImplFromJson(Map<String, dynamic> json) =>
    _$TorrentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: (json['status'] as num).toInt(),
      downloadDir: json['downloadDir'] as String,
      totalSize: (json['totalSize'] as num).toInt(),
      percentDone: (json['percentDone'] as num).toDouble(),
      rateDownload: (json['rateDownload'] as num).toDouble(),
      rateUpload: (json['rateUpload'] as num).toDouble(),
      comment: json['comment'] as String?,
      dateCreated: _dateFromJson((json['dateCreated'] as num).toInt()),
    );

Map<String, dynamic> _$$TorrentImplToJson(_$TorrentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'downloadDir': instance.downloadDir,
      'totalSize': instance.totalSize,
      'percentDone': instance.percentDone,
      'rateDownload': instance.rateDownload,
      'rateUpload': instance.rateUpload,
      'comment': instance.comment,
      'dateCreated': instance.dateCreated.toIso8601String(),
    };
