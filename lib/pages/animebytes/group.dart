import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/pages/animebytes/torrent.dart';
import 'package:tetsu_app/preferences.dart';
import 'package:tetsu_app/providers/torrents.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/html_text.dart';
import 'package:tetsu_app/widgets/image.dart';

final _hiddenIdsProvider = StateProvider.autoDispose<Set<int>>((ref) => {});

class AnimebytesGroupPage extends ConsumerWidget {
  final int id;

  const AnimebytesGroupPage(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final group = ref
    //     .read(abSearchResultsProvider)
    //     .valueOrNull
    //     ?.where((group) => group.id == id)
    //     .firstOrNull;

    final group = preferences
        .getCustomValue<AnimebytesSearchResult?>(
          Preferences.animebytesCache(id),
          adapter: JsonAdapter(
            deserializer: (e) =>
                AnimebytesSearchResult.fromJson(e as Map<String, dynamic>),
          ),
          defaultValue: null,
        )
        .getValue();

    if (group == null) {
      context.pop();
      return Container();
    }

    final hidden = ref.watch(_hiddenIdsProvider);
    final downloaded = ref.watch(animebytesTorrentIdsProvider);
    final progress = ref.watch(torrentsProvider).maybeWhen(
          data: (torrents) => Map.fromEntries(torrents
              .where((t) => t.animebytesId != null)
              .map((t) => MapEntry(t.animebytesId, t.percentDone))),
          orElse: () => {},
        );

    final columnized = group.torrents.map((t) {
      final list = t.property.split(" | ");

      // show in separate column
      list.removeWhere((property) => property == "Freeleech");

      if (list.remove("Dual Audio")) {
        // move it to the end
        list.add("Dual Audio");
      }

      return list;
    }).toList();

    final numColumns =
        columnized.map((t) => t.length).reduce((a, b) => a > b ? a : b);

    final transposed = List.generate(numColumns, (index) {
      return columnized.map((row) {
        return index < row.length ? row[index] : "";
      }).toList();
    });

    final maxWidths = transposed.map((row) {
      return row.map((cell) => cell.length).reduce((a, b) => a > b ? a : b);
    }).toList();

    final avgWidth = maxWidths.reduce((a, b) => a + b) / maxWidths.length;

    final mostSeeders = group.torrents.reduce((a, b) {
      return a.seeders > b.seeders ? a : b;
    }).seeders;

    return Scaffold(
      appBar: AppBar(
        title: Text(group.seriesName),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ZoomableNetworkImage(
                  tag: "animebytes-${group.id}",
                  url: group.image!,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: HtmlText(group.descriptionHtml ?? ""),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: DataTable2(
              bottomMargin: MediaQuery.of(context).padding.bottom,
              minWidth: 1000,
              columnSpacing: 0,
              smRatio: 0.5,
              lmRatio: 2,
              columns: [
                DataColumn2(label: Text("Properties")),
                ...List.generate(
                  numColumns - 1,
                  (index) {
                    final maxWidth = maxWidths[index + 1];

                    return DataColumn2(
                      label: Container(),
                      size: maxWidth > avgWidth
                          ? ColumnSize.L
                          : maxWidth > avgWidth * 0.4
                              ? ColumnSize.M
                              : ColumnSize.S,
                    );
                  },
                ),
                DataColumn2(
                  label: Container(),
                  size: ColumnSize.S,
                  numeric: true,
                ),
                DataColumn2(
                  label: Text("Size"),
                  numeric: true,
                ),
                DataColumn2(
                  label: Icon(Icons.refresh),
                  size: ColumnSize.S,
                  numeric: true,
                ),
                DataColumn2(
                  label: Icon(Icons.download),
                  size: ColumnSize.S,
                  numeric: true,
                ),
                DataColumn2(
                  label: Icon(Icons.upload),
                  size: ColumnSize.S,
                  numeric: true,
                ),
                DataColumn2(
                  label: Container(),
                  size: ColumnSize.S,
                ),
              ],
              rows: [
                for (final torrent in group.torrents
                    .asMap()
                    .entries
                    .where((element) => !hidden.contains(element.value.id)))
                  DataRow2(
                    key: ValueKey(torrent.value.id),
                    color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (downloaded.contains(torrent.value.id)) {
                          return Colors.green.withOpacity(0.1);
                        }

                        if (torrent.value.seeders == mostSeeders) {
                          return Colors.deepPurple.withOpacity(0.1);
                        }

                        return null;
                      },
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AnimebytesTorrentDialog(torrent.value),
                      );
                    },
                    cells: [
                      ...List.generate(
                        numColumns,
                        (idx) {
                          final row = columnized[torrent.key];
                          return DataCell(
                            Text(idx < row.length ? row[idx] : ""),
                          );
                        },
                      ),
                      DataCell(
                        torrent.value.rawDownMultiplier == 0
                            ? Icon(Icons.currency_yen, color: Colors.green)
                            : Container(),
                      ),
                      DataCell(
                        Text(humanBytes(torrent.value.size)),
                      ),
                      DataCell(
                        Text(torrent.value.snatched.toString()),
                      ),
                      DataCell(
                        Text(
                          torrent.value.seeders.toString(),
                          style: TextStyle(
                            color: torrent.value.seeders == mostSeeders
                                ? Colors.blue
                                : null,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(torrent.value.leechers.toString()),
                      ),
                      DataCell(
                        progress.containsKey(torrent.value.id)
                            ? progress[torrent.value.id] == 1
                                ? IconButton(
                                    icon: Icon(Icons.done, color: Colors.green),
                                    onPressed: () {},
                                  )
                                : Center(
                                    child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        value: progress[torrent.value.id],
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                  )
                            : IconButton(
                                icon: Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.blueGrey,
                                ),
                                onPressed: () {
                                  ref.read(_hiddenIdsProvider.notifier).update(
                                      (state) => {...state, torrent.value.id});
                                },
                              ),
                      ),

                      // DataCell(
                      //   Text(torrent.property.replaceAll(" | ", ", ")),
                      //   onTap: () => context.go("/torrents/${torrent.id}"),
                      // ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
