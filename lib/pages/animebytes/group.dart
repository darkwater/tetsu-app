import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/providers/animebytes.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final _hiddenIdsProvider = StateProvider.autoDispose<Set<int>>((ref) => {});

class AnimebytesGroupPage extends ConsumerWidget {
  final int id;

  const AnimebytesGroupPage(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref
        .read(abSearchResultsProvider)
        .valueOrNull
        ?.where((group) => group.id == id)
        .firstOrNull;

    if (group == null) {
      context.pop();
      return Container();
    }

    final hidden = ref.watch(_hiddenIdsProvider);

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

    return Scaffold(
      appBar: AppBar(
        title: Text(group.seriesName),
      ),
      body: DataTable2(
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
            numeric: true,
          ),
        ],
        rows: [
          for (final torrent in group.torrents
              .asMap()
              .entries
              .where((element) => !hidden.contains(element.value.id)))
            DataRow2(
              key: ValueKey(torrent.value.id),
              onTap: () {},
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
                      ? Icon(Icons.currency_yen)
                      : Container(),
                ),
                DataCell(
                  Text(torrent.value.size.toString()),
                ),
                DataCell(
                  Text(torrent.value.snatched.toString()),
                ),
                DataCell(
                  Text(torrent.value.seeders.toString()),
                ),
                DataCell(
                  Text(torrent.value.leechers.toString()),
                ),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      ref
                          .read(_hiddenIdsProvider.notifier)
                          .update((state) => {...state, torrent.value.id});
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
    );
  }
}
