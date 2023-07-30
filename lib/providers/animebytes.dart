import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tetsu_app/apis/animebytes/client.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/main.dart';

part 'animebytes.g.dart';

@Riverpod(keepAlive: true)
Stream<String> abTorrentkey(Ref ref) => preferences
    .getString("animebytes_passkey", defaultValue: "")
    .where((e) => e.isNotEmpty);

@Riverpod(keepAlive: true)
Stream<String> abUsername(Ref ref) => preferences
    .getString("animebytes_username", defaultValue: "")
    .where((e) => e.isNotEmpty);

@riverpod
AnimebytesClient abClient(AbClientRef ref) {
  final username = ref.watch(abUsernameProvider);
  final passkey = ref.watch(abTorrentkeyProvider);
  return AnimebytesClient(
    username.valueOrNull ?? "",
    passkey.valueOrNull ?? "",
  );
}

final abSearchQueryProvider = StateProvider<String?>((ref) => null);

@Riverpod(keepAlive: true)
Future<List<AnimebytesSearchResult>> abSearchResults(Ref ref) async {
  final query = ref.watch(abSearchQueryProvider);
  if (query == null || query.isEmpty) {
    return [];
  }

  final client = ref.read(abClientProvider);
  final res = await client.search(query);
  print(res.data);
  final data = AnimebytesSearchResponse.fromJson(res.data!);

  return data.groups;
}
