// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';
part 'file.g.dart';

// #[derive(Clone, PartialEq, Serialize, Deserialize)]
// pub struct File {
//     pub fid: u32,
//     pub aid: u32,
//     pub eid: u32,
//     pub gid: u32,
//     pub state: i16,
//     pub size: i64,
//     pub ed2k: String,
//     pub colour_depth: String,
//     pub quality: String,
//     pub source: String,
//     pub audio_codec_list: Vec<String>,
//     pub audio_bitrate_list: Vec<i32>,
//     pub video_codec: Vec<String>,
//     pub video_bitrate: Vec<String>,
//     pub video_resolution: Vec<String>,
//     pub dub_language: String,
//     pub sub_language: String,
//     pub length_in_seconds: i32,
//     pub description: String,
//     pub aired_date: DateTime<Utc>,
// }

@freezed
class TetsuFile with _$TetsuFile {
  const TetsuFile._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TetsuFile({
    required String path,
    required int fid,
    required int aid,
    required int eid,
    required int gid,
    required int state,
    required int size,
    required String ed2k,
    required String colourDepth,
    required String quality,
    required String source,
    required List<String> audioCodecList,
    required List<int> audioBitrateList,
    required List<String> videoCodec,
    required List<String> videoBitrate,
    required List<String> videoResolution,
    required String dubLanguage,
    required String subLanguage,
    required int lengthInSeconds,
    required String description,
    required DateTime airedDate,
  }) = _TetsuFile;

  factory TetsuFile.fromJson(Map<String, Object?> json) =>
      _$TetsuFileFromJson(json);
}
