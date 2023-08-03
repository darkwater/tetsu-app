import "package:data_table_2/data_table_2.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:tetsu_app/providers/torrents.dart";
import "package:tetsu_app/utils.dart";
import "package:tetsu_app/widgets/ago_builder.dart";

class TorrentsMainPane extends ConsumerWidget {
  const TorrentsMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Torrents"),
        ),
        body: ref.watch(torrentsProvider).when(
              data: (torrents) {
                final relevant = torrents
                    .where((t) => t.downloadDir == "/data/torrents/anime")
                    .toList();

                relevant.sort((a, b) => b.dateCreated.compareTo(a.dateCreated));

                return Column(
                  children: [
                    Expanded(
                      child: DataTable2(
                        lmRatio: 3,
                        columns: const [
                          DataColumn2(label: Text("Name"), size: ColumnSize.L),
                          DataColumn2(label: Text("Started")),
                          DataColumn2(label: Text("Progress")),
                        ],
                        rows: relevant
                            .map(
                              (torrent) => DataRow2(
                                key: ValueKey(torrent.id),
                                cells: [
                                  DataCell(Text(
                                    torrent.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                  DataCell(AgoBuilder(
                                    when: torrent.dateCreated,
                                    builder: (context, ago) => Text("$ago ago"),
                                  )),
                                  DataCell(
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 100,
                                      ),
                                      child: LinearProgressIndicator(
                                        value: torrent.percentDone,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Divider(height: 0),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Spacer(),
                            ...ref.watch(freeSpaceProvider).maybeWhen(
                                  data: (data) => [
                                    Text("Free space: ${humanBytes(data)}"),
                                  ],
                                  orElse: () => [],
                                ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(
                child: Text(
                  "$error\n$stackTrace",
                ),
              ),
            ),
      ),
    );
  }
}

// class _TableCell extends StatelessWidget {
//   final Widget child;

//   const _TableCell({required this.child});

//   factory _TableCell.header(String text) => _TableCell(
//         child: Text(
//           text,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       );

//   factory _TableCell.text(String text) => _TableCell(
//         child: Text(text),
//       );

//   factory _TableCell.progress(double progress) => _TableCell(
//         child: LinearProgressIndicator(
//           value: progress,
//         ),
//       );

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: child,
//     );
//   }
// }
