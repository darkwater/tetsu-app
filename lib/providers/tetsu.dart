import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tetsu_app/apis/tetsu/client.dart";
import "package:tetsu_app/apis/tetsu/anime.dart";
import "package:tetsu_app/apis/tetsu/episode.dart";
import "package:tetsu_app/apis/tetsu/file.dart";

part "tetsu.g.dart";

final tetsu = TetsuClient();

@Riverpod(keepAlive: true)
Future<List<TetsuAnime>> tetsuAllAnime(Ref ref) async {
  return await tetsu.getAllAnime();
}

@Riverpod(keepAlive: true)
Future<TetsuAnime> tetsuAnime(Ref ref, int aid) async {
  final all = await ref.watch(tetsuAllAnimeProvider.future);
  final anime = all.where((e) => e.aid == aid).firstOrNull;

  if (anime != null) {
    return anime;
  }

  return await tetsu.getAnime(aid);
}

@Riverpod(keepAlive: true)
Future<List<TetsuEpisode>> tetsuEpisodes(Ref ref, int aid) async {
  return await tetsu.getEpisodes(aid);
}

@Riverpod(keepAlive: true)
Future<List<TetsuFile>> tetsuFiles(Ref ref, int aid) async {
  return await tetsu.getFiles(aid);
}

@Riverpod(keepAlive: true)
Future<Map<String, dynamic>> tetsuSettings(Ref ref) async {
  return await tetsu.settings();
}

@Riverpod(keepAlive: true)
Future<dynamic> tetsuSettingValue(Ref ref, String key) async {
  final settings = await ref.watch(tetsuSettingsProvider.future);
  return settings[key];
}
