import "package:dio/dio.dart";

import "anime.dart";
import "episode.dart";
import "file.dart";

class TetsuClient {
  late final Dio dio;

  TetsuClient() {
    BaseOptions options = BaseOptions(
      baseUrl: "https://tetsu.fbk.red/",
    );

    dio = Dio(options);
  }

  Future<List<TetsuAnime>> getAllAnime() async {
    Response response = await dio.get("/anime");
    return response.data
        .map<TetsuAnime>((e) => TetsuAnime.fromJson(e))
        .toList();
  }

  Future<TetsuAnime> getAnime(int aid) async {
    Response response = await dio.get("/anime/$aid");
    return TetsuAnime.fromJson(response.data);
  }

  Future<List<TetsuEpisode>> getEpisodes(int aid) async {
    Response response = await dio.get("/anime/$aid/episodes");
    return response.data
        .map<TetsuEpisode>((e) => TetsuEpisode.fromJson(e))
        .toList();
  }

  Future<List<TetsuFile>> getFiles(int aid) async {
    Response response = await dio.get("/anime/$aid/files");
    return response.data.map<TetsuFile>((e) => TetsuFile.fromJson(e)).toList();
  }
}
