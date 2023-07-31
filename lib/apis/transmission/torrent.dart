// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "torrent.freezed.dart";
part "torrent.g.dart";

@freezed
class Torrent with _$Torrent {
  const Torrent._();

  int? get animebytesId {
    final regex = RegExp(r"/torrent/(\d+)/group");
    return int.tryParse(regex.firstMatch(comment ?? "")?.group(1) ?? "");
  }

  const factory Torrent({
    required int id,
    required String name,
    required int status,
    required String downloadDir,
    required int totalSize,
    required double percentDone,
    required double rateDownload,
    required double rateUpload,
    required String? comment,
    @JsonKey(fromJson: _dateFromJson) required DateTime dateCreated,
  }) = _Torrent;

  factory Torrent.fromJson(Map<String, dynamic> json) =>
      _$TorrentFromJson(json);
}

DateTime _dateFromJson(int timestamp) {
  return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}
