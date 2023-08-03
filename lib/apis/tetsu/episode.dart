// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class TetsuEpisode with _$TetsuEpisode {
  const TetsuEpisode._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TetsuEpisode({
    required int eid,
    required int aid,
    required int length,
    required int rating,
    required int votes,
    required String epno,
    required String eng,
    required String romaji,
    required String kanji,
    required DateTime aired,
    required int etype,
  }) = _TetsuEpisode;

  factory TetsuEpisode.fromJson(Map<String, Object?> json) =>
      _$TetsuEpisodeFromJson(json);
}
