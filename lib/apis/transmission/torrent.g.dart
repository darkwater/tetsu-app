// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Torrent _$$_TorrentFromJson(Map<String, dynamic> json) => _$_Torrent(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as int,
      downloadDir: json['downloadDir'] as String,
      totalSize: json['totalSize'] as int,
      percentDone: (json['percentDone'] as num).toDouble(),
      rateDownload: (json['rateDownload'] as num).toDouble(),
      rateUpload: (json['rateUpload'] as num).toDouble(),
      dateCreated: _dateFromJson(json['dateCreated'] as int),
    );

Map<String, dynamic> _$$_TorrentToJson(_$_Torrent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'downloadDir': instance.downloadDir,
      'totalSize': instance.totalSize,
      'percentDone': instance.percentDone,
      'rateDownload': instance.rateDownload,
      'rateUpload': instance.rateUpload,
      'dateCreated': instance.dateCreated.toIso8601String(),
    };
