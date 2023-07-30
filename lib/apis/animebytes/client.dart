import "package:dio/dio.dart";

class AnimebytesClient {
  final String username;
  final String passkey;

  final Dio dio;

  AnimebytesClient(this.username, this.passkey)
      : dio = Dio(
          BaseOptions(
            baseUrl: "https://animebytes.tv/",
          ),
        ); //..interceptors.add(LogInterceptor());

  Future<Response<Map<String, dynamic>>> search(String name) {
    return dio.get("scrape.php", queryParameters: {
      "username": username,
      "torrent_pass": passkey,
      "type": "anime",
      "searchstr": name,
      "search_type": "title",
    });
  }
}
