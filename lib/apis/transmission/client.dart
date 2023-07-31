import "package:dio/dio.dart";

class TransmissionClient {
  late final Dio dio;

  TransmissionClient() {
    BaseOptions options = BaseOptions(
      baseUrl: "https://torrents.fbk.red/",
      headers: {
        "X-Transmission-Session-Id":
            "", // Transmission requires a valid Session-Id
      },
    );

    dio = Dio(options);

    dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) async {
        if (e.response?.statusCode == 409) {
          // If the server returns a 409 error, set the correct Session-Id and retry the request.
          final sessionId =
              e.response?.headers["X-Transmission-Session-Id"]?[0];

          dio.options.headers["X-Transmission-Session-Id"] = sessionId;
          e.requestOptions.headers["X-Transmission-Session-Id"] = sessionId;

          // print(dio.options.headers);

          handler.resolve(await dio.request(
            e.requestOptions.path,
            data: e.requestOptions.data,
            options: Options(
              method: e.requestOptions.method,
              headers: e.requestOptions.headers,
            ),
          ));
        } else {
          handler.next(e);
        }
      },
      // onResponse: (res, handler) async {
      //   print(res.data);
      //   handler.next(res);
      // },
    ));
  }

  Future<Response> getTorrents() {
    return dio.post("/transmission/rpc", data: {
      "method": "torrent-get",
      "arguments": {
        "fields": [
          "id",
          "name",
          "status",
          "downloadDir",
          "totalSize",
          "percentDone",
          "rateDownload",
          "rateUpload",
          "dateCreated",
          "comment",
        ],
      },
    });
  }

  Future<Response> addTorrent(String torrentUrl) {
    return dio.post("/transmission/rpc", data: {
      "method": "torrent-add",
      "arguments": {
        "filename": torrentUrl,
      },
    });
  }

  Future<Response> freeSpace(String path) {
    return dio.post("/transmission/rpc", data: {
      "method": "free-space",
      "arguments": {
        "path": path,
        "download-dir": "/data/torrents/anime",
      },
    });
  }
}
