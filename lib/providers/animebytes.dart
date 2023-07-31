import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:tetsu_app/apis/animebytes/client.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/preferences.dart';

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

@Riverpod(keepAlive: true)
Future<List<AnimebytesSearchResult>> abSearchResults(
  Ref ref,
  String query,
  Set<String> filters,
) async {
  final filterParams = Map.fromEntries(
    filters.map((e) => MapEntry(e, "1")),
  );

  final client = ref.read(abClientProvider);
  final res = await client.search(query, filterParams);
  print(res.data);
  final data = AnimebytesSearchResponse.fromJson(res.data!);

  for (final group in data.groups) {
    preferences.setCustomValue(
      Preferences.animebytesCache(group.id),
      group,
      adapter: JsonAdapter(),
    );
  }

  return data.groups;
}
