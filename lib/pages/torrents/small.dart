import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/providers/torrents.dart';

class TorrentsSmallPane extends ConsumerWidget {
  const TorrentsSmallPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: ref.watch(torrentsProvider).when(
            data: (torrents) {
              final relevant = torrents
                  .where((t) => t.downloadDir == "/data/torrents/anime")
                  .toList();

              relevant.sort((a, b) => b.dateCreated.compareTo(a.dateCreated));

              return ListView.builder(
                itemCount: relevant.length,
                itemBuilder: (context, index) {
                  final torrent = relevant[index];
                  return ListTile(
                    title: Text(torrent.name),
                    subtitle: Text(torrent.downloadDir),
                    trailing: Text(torrent.percentDone.toString()),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text(
                "$error\n$stackTrace",
              ),
            ),
          ),
    );
  }
}
