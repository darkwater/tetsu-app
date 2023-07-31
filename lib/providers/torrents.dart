import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:tetsu_app/apis/transmission/client.dart";
import "package:tetsu_app/apis/transmission/torrent.dart";

part "torrents.g.dart";

final transmission = TransmissionClient();

@riverpod
Stream<List<Torrent>> torrents(Ref ref) async* {
  while (true) {
    final response = await transmission.getTorrents();

    final list = response.data["arguments"]?["torrents"] as List<dynamic>?;
    if (list != null) {
      yield list.map((e) => Torrent.fromJson(e)).toList();
    }

    await Future.delayed(const Duration(seconds: 5));
  }
}

@riverpod
Set<int> animebytesTorrentIds(AnimebytesTorrentIdsRef ref) {
  return ref.watch(torrentsProvider).maybeWhen(
        data: (torrents) =>
            torrents.map((t) => t.animebytesId).whereType<int>().toSet(),
        orElse: () => {},
      );
}

@riverpod
Future<int> freeSpace(Ref ref) async {
  final response = await transmission.freeSpace("/data/torrents/anime");
  return response.data["arguments"]["size-bytes"];
}
