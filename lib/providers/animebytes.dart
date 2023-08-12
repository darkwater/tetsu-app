import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:tetsu_app/apis/animebytes/client.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/preferences.dart';
import 'package:tetsu_app/providers/tetsu.dart';

part 'animebytes.g.dart';

@Riverpod(keepAlive: true)
Stream<String> abTorrentkey(Ref ref) => preferences
    .getString(Preferences.animebytesTorrentkey, defaultValue: "")
    .where((e) => e.isNotEmpty);

@Riverpod(keepAlive: true)
Stream<String> abUsername(Ref ref) => preferences
    .getString(Preferences.animebytesUsername, defaultValue: "")
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

  final res = await tetsu.animebytesSearch(query, filterParams);
  final data = AnimebytesSearchResponse.fromJson(res);

  for (final group in data.groups) {
    preferences.setCustomValue(
      Preferences.animebytesCache(group.id),
      group,
      adapter: JsonAdapter(),
    );
  }

  return data.groups;
}

@riverpod
Future<AnimebytesSearchResult> abGroup(Ref ref, int groupId) async {
  return await tetsu.animebytesGroup(groupId);
}
