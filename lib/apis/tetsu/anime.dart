// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

@freezed
class TetsuAnime with _$TetsuAnime {
  const TetsuAnime._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TetsuAnime({
    required int aid,
    required int dateflags,
    required String year,
    required String atype,
    required List<int> relatedAidList,
    required List<String> relatedAidType,
    required String romajiName,
    required String kanjiName,
    required String englishName,
    required List<String> shortNameList,
    required int episodes,
    required int specialEpCount,
    required DateTime airDate,
    required DateTime endDate,
    required String picname,
    required bool nsfw,
    required List<int> characteridList,
    required int specialsCount,
    required int creditsCount,
    required int otherCount,
    required int trailerCount,
    required int parodyCount,
  }) = _TetsuAnime;

  factory TetsuAnime.fromJson(Map<String, Object?> json) =>
      _$TetsuAnimeFromJson(json);
}
