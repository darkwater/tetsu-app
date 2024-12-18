import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/pages/animebytes/torrent.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/providers/torrents.dart';
import 'package:tetsu_app/utils.dart';

class AbTorrentsList extends ConsumerWidget {
  final int groupId;

  const AbTorrentsList(this.groupId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gProvider = ref.watch(abGroupProvider(groupId));
    if (!gProvider.hasValue) {
      return SizedBox(
        width: double.infinity,
        height: 64,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    final group = gProvider.requireValue;

    final downloaded = ref.watch(animebytesTorrentIdsProvider);

    final mostSeeders = group.torrents.reduce((a, b) {
      return a.seeders > b.seeders ? a : b;
    }).seeders;

    return ListView(
      children: [
        for (final torrent in group.torrents)
          SizedBox(
            width: double.infinity,
            child: InkWell(
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (context) => AnimebytesTorrentDialog(torrent),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context),
                  ),
                  color: downloaded.contains(torrent.id)
                      ? Colors.green.withOpacity(0.1)
                      : (torrent.seeders / mostSeeders) > 0.8
                          ? Colors.deepPurple.withOpacity(0.1)
                          : null,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(torrent.property),
                    Spacer(),
                    Text(humanBytes(torrent.size)),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 32,
                      child: torrent.leechers > 0
                          ? Text(
                              torrent.leechers.toString(),
                              textAlign: TextAlign.right,
                            )
                          : null,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 14,
                      color: torrent.leechers > 0 ? null : Colors.transparent,
                    ),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 32,
                      child: Text(
                        torrent.snatched.toString(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Icon(Icons.keyboard_double_arrow_down, size: 14),
                    SizedBox(width: 16),
                    SizedBox(
                      width: 32,
                      child: Text(
                        torrent.seeders.toString(),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Icon(Icons.arrow_upward, size: 14),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 32,
                      child: downloaded.contains(torrent.id)
                          ? Icon(Icons.check, color: Colors.green)
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
