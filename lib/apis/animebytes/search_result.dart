// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "search_result.freezed.dart";
part "search_result.g.dart";

// {
//   "Results": (int) total number of matched groups [53392],
//   "Pagination": {
//     "Current": (int) current page [1]
//     "Max": (int) total number of pages [3560],
//     "Limit": {
//       "Min": (int) minimum number of results (groups) per single view (page) [15],
//       "Coerced": (int) current number of results (groups) per single view (page) [15],
//       "Max": (int) maximum number of results (groups) per single view (page) [50]
//   }
//   "Matches": (int) number of results (groups) in current view (page) [15],
//   "Groups": [] (array of objects) array of groups found, see below
// }

// // Groups for type = 'anime'
// [
//     {
//       "ID": (int) ID of group [50572],
//       "CategoryName": (string) category of group [Light Novel],
//       "FullName": (string) full HTML encoded group name [Cooking with Wild Game - Light Novel  [2015]],
//       "GroupName": (string) group name [Light Novel],
//       "SeriesID": (int) ID of series the group belongs to [49712]
//       "SeriesName": (string) name of the series the group belongs to [Cooking with Wild Game]
//       "Year": (string) group's year [2015],
//       "Image": (string) group's cover image [https://mei.animebytes.tv/YSNbsYanyDC.jpg],
//       "SynonymnsV2": (object) synonyms, indexed by their type,
//       "Snatched": (int) amount of snatches [67],
//       "Comments": (int) amount of comments [1],
//       "Links": (object) list of links,
//       "Votes": (int) amount of votes [0],
//       "AvgVote": (int) average vote [0],
//       "Description": (string|null) BBcode representation of description,
//       "DescriptionHTML": (string) HTML encoded representation of description,
//       "EpCount": (int) amount of episodes or volumes for group [18],
//       "StudioList": (string|null) internal format, list of studios/publishers [Hobby Japan///1249|J-Novel Club///3081],
//       "PastWeek": (int) amount of torrents added in past week [0],
//       "Incomplete": (bool) true if there are no complete torrents for this group,
//       "Ongoing": (bool) is the group airing (applicable only for anime),
//       "Tags": (array of strings) list of tags
//       "Torrents": (array of objects) list of torrents
//     }
// ]

// // Torrents
// [
//         {
//           "ID": (int) ID of torrent [438333],
//           "EditionData": (object) edition data for torrent,
//           "RawDownMultiplier": (int) download multiplier applied to torrent [0],
//           "RawUpMultiplier": (int) upload multiplier applied to torrent [1],
//           "Link": (string) download link for torrent [https://animebytes.tv/torrent/438333/download/{:passkey}],
//           "Property": (string) property string of all torrent's metadata [Blu-ray | MKV | h264 | 1080p | FLAC 2.0 | Softsubs (PhyStein) | Freeleech],
//           "Snatched": (int) number of snatches [6],
//           "Seeders": (int) number of seeders [23],
//           "Leechers": (int) number of leechers [1],
//           "Status": (int) torrent state, either 0 (visible) or 1 (pruned) [0],
//           "Size": (int) size of torrents in bytes [17304126999],
//           "FileCount": (int) number of files in torrent [1],
//           "FileList": (object) list of files and their sizes,
//           "UploadTime": (sqltime) datetime the torrent was uploaded [2020-02-25 08:59:54]
//         }
// ]

@freezed
class AnimebytesSearchResponse with _$AnimebytesSearchResponse {
  const AnimebytesSearchResponse._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory AnimebytesSearchResponse({
    required int results,
    required Pagination pagination,
    required int matches,
    @JsonKey(defaultValue: []) required List<AnimebytesSearchResult> groups,
  }) = _AnimebytesSearchResponse;

  factory AnimebytesSearchResponse.fromJson(Map<String, Object?> json) =>
      _$AnimebytesSearchResponseFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const Pagination._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Pagination({
    required int current,
    required double max,
    required Limit limit,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, Object?> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Limit with _$Limit {
  const Limit._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Limit({
    required int min,
    required int coerced,
    required int max,
  }) = _Limit;

  factory Limit.fromJson(Map<String, Object?> json) => _$LimitFromJson(json);
}

@freezed
class AnimebytesSearchResult with _$AnimebytesSearchResult {
  const AnimebytesSearchResult._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory AnimebytesSearchResult({
    @JsonKey(name: 'ID') required int id,
    required String categoryName,
    // required String fullName,
    required String groupName,
    required int? seriesId,
    required String seriesName,
    required String? year,
    required String? image,
    @JsonKey(defaultValue: {}, fromJson: _emptyMapIsList)
    required Map<String, String> links,
    @JsonKey(name: 'DescriptionHTML') required String? descriptionHtml,
    required int? epCount,
    @JsonKey(fromJson: _studioListFromJson) required List<String> studioList,
    required bool? incomplete,
    required bool? ongoing,
    required List<AnimebytesTorrent> torrents,
  }) = _AnimebytesSearchResult;

  int? get malId {
    final ints =
        links["MAL"]?.split("/").map((e) => int.tryParse(e) ?? 0).toList();

    final max = ints?.reduce((a, b) => a > b ? a : b);

    if (max == 0) return null;
    return max;
  }

  factory AnimebytesSearchResult.fromJson(Map<String, Object?> json) =>
      _$AnimebytesSearchResultFromJson(json);
}

@freezed
class AnimebytesTorrent with _$AnimebytesTorrent {
  const AnimebytesTorrent._();

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory AnimebytesTorrent({
    @JsonKey(name: 'ID') required int id,
    required dynamic editionData,
    required double rawDownMultiplier,
    required double rawUpMultiplier,
    required String link,
    required String property,
    required int snatched,
    required int seeders,
    required int leechers,
    required int status,
    required int size,
    required int fileCount,
    required List<AnimebytesTorrentFile> fileList,
    required DateTime uploadTime,
  }) = _AnimebytesTorrent;

  factory AnimebytesTorrent.fromJson(Map<String, Object?> json) =>
      _$AnimebytesTorrentFromJson(json);
}

@freezed
class AnimebytesTorrentFile with _$AnimebytesTorrentFile {
  const AnimebytesTorrentFile._();

  const factory AnimebytesTorrentFile({
    required String filename,
    required int size,
  }) = _AnimebytesTorrentFile;

  factory AnimebytesTorrentFile.fromJson(Map<String, Object?> json) =>
      _$AnimebytesTorrentFileFromJson(json);
}

Map<String, String> _emptyMapIsList(Object? json) {
  if (json is Map<String, Object?>) {
    return json.map((key, value) => MapEntry(key, value as String));
  }
  return {};
}

List<String> _studioListFromJson(Object? json) {
  if (json is String) {
    return json.split("|").map((e) => e.split("///").first).toList();
  }
  return [];
}
