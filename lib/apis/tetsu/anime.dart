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
    required Links links,
    required WatchProgress? watchProgress,
  }) = _TetsuAnime;

  factory TetsuAnime.fromJson(Map<String, Object?> json) =>
      _$TetsuAnimeFromJson(json);

  double get progress => watchProgress?.animeProgress ?? 0;
  bool get watchedRecently =>
      watchProgress?.lastUpdated.isAfter(
        DateTime.now().subtract(const Duration(days: 30)),
      ) ??
      false;

  TetsuAnimeCategory get category {
    if (progress == 1) {
      return TetsuAnimeCategory.completed;
    } else if (progress == 0) {
      return TetsuAnimeCategory.new_;
    } else if (watchedRecently) {
      return TetsuAnimeCategory.inProgress;
    } else {
      return TetsuAnimeCategory.dropped;
    }
  }
}

enum TetsuAnimeCategory {
  inProgress,
  new_,
  completed,
  dropped,
}

@freezed
class Links with _$Links {
  const Links._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Links({
    int? animebytesId,
    int? anidbId,
    int? annId,
    int? anilistId,
    int? malId,
  }) = _Links;

  factory Links.fromJson(Map<String, Object?> json) => _$LinksFromJson(json);
}

@freezed
class WatchProgress with _$WatchProgress {
  const WatchProgress._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory WatchProgress({
    required int lastEid,
    required double episodeProgress,
    required double animeProgress,
    required DateTime lastUpdated,
  }) = _WatchProgress;

  factory WatchProgress.fromJson(Map<String, Object?> json) =>
      _$WatchProgressFromJson(json);
}
