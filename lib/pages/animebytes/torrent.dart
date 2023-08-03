import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/providers/torrents.dart';
import 'package:tetsu_app/utils.dart';

class AnimebytesTorrentDialog extends ConsumerWidget {
  final AnimebytesTorrent torrent;

  const AnimebytesTorrentDialog(this.torrent, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transmissionTorrent = (ref.watch(torrentsProvider).valueOrNull ?? [])
        .where(
          (t) => t.animebytesId == torrent.id,
        )
        .firstOrNull;

    return LayoutBuilder(builder: (context, constraints) {
      return Dialog(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: constraints.maxWidth / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  torrent.property,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4, right: 24),
                child: Row(
                  children: [
                    Spacer(),
                    ...ref.watch(freeSpaceProvider).maybeWhen(
                          data: (data) => [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Total size: ${humanBytes(torrent.size)}",
                                ),
                                Text("Free space: ${humanBytes(data)}"),
                              ],
                            ),
                          ],
                          orElse: () => [],
                        ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Spacer(),
                    if (torrent.rawDownMultiplier == 0) ...[
                      Icon(Icons.currency_yen, color: Colors.green),
                      SizedBox(width: 4),
                      Text(
                        "Freeleech",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(width: 16),
                    ],
                    if (transmissionTorrent != null)
                      if (transmissionTorrent.percentDone == 1) ...[
                        Icon(Icons.check_circle, color: Colors.green),
                        SizedBox(width: 8),
                        Text(
                          "Downloaded",
                          style: TextStyle(color: Colors.green),
                        ),
                        SizedBox(width: 16),
                      ] else ...[
                        SizedBox(width: 8),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(
                            value: transmissionTorrent.percentDone >= 0.01
                                ? transmissionTorrent.percentDone
                                : null,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.2),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Downloading...",
                          style: TextStyle(
                            color: Theme.of(context)
                                    .progressIndicatorTheme
                                    .color ??
                                Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ]
                    else
                      ElevatedButton.icon(
                        icon: Icon(Icons.download),
                        label: Text("Download"),
                        onPressed: () async {
                          await transmission.addTorrent(torrent.link);
                          ref.invalidate(torrentsProvider);
                        },
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight / 2,
                child: DataTable2(
                  lmRatio: 3,
                  columns: const [
                    DataColumn2(label: Text("Filename"), size: ColumnSize.L),
                    DataColumn2(label: Text("Size"), numeric: true),
                  ],
                  rows: torrent.fileList
                      .map((file) => DataRow(
                            cells: [
                              DataCell(Text(file.filename)),
                              DataCell(Text(humanBytes(file.size))),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
