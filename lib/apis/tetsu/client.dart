import "dart:convert";

import "package:dio/dio.dart";
import "package:tetsu_app/apis/animebytes/search_result.dart";
import "package:web_socket_channel/web_socket_channel.dart";

import "anime.dart";
import "episode.dart";
import "file.dart";
import "mpv/client.dart";

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

  MpvClient mpv() {
    final url =
        Uri.parse("${dio.options.baseUrl.replaceFirst("http", "ws")}mpv");
    // final url = Uri.parse("ws://atsushi.local:5352");
    final channel = WebSocketChannel.connect(url);
    return MpvClient(channel);
  }

  Future<Map<String, dynamic>> animebytesSearch(
    String name,
    Map<String, dynamic> parameters,
  ) async {
    final res = await dio.get(
      "/animebytes/search",
      queryParameters: {
        "type": "anime",
        "searchstr": name,
        "search_type": "title",
        ...parameters,
      },
    );

    try {
      return json.decode(res.data);
    } catch (e) {
      print(e);
      print(res.data);
      rethrow;
    }
  }

  Future<AnimebytesSearchResult> animebytesGroup(int id) async {
    final res = await dio.get("/animebytes/groups/$id");
    try {
      return AnimebytesSearchResult.fromJson(jsonDecode(res.data));
    } catch (e) {
      print("error:");
      print(res.statusCode);
      print(res.data);
      rethrow;
    }
  }

  Future<AnimebytesTorrent> animebytesTorrent(int id) async {
    final res = await dio.get("/animebytes/torrents/$id");
    return AnimebytesTorrent.fromJson(jsonDecode(res.data));
  }

  Future<Map<String, dynamic>> settings() async {
    final res = await dio.get("/settings");
    return res.data;
  }

  Future setSetting(String key, String value) async {
    try {
      await dio.post(
        "/settings",
        data: {
          "key": key,
          "value": value,
        },
        options: Options(contentType: "application/x-www-form-urlencoded"),
      );
    } on DioException catch (e, stack) {
      print(e);
      print(e.response?.data);
      print(stack);
    }
  }
}
