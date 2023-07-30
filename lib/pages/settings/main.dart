import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/preferences.dart';
import 'package:tetsu_app/providers/animebytes.dart';

class SettingsMainPane extends ConsumerWidget {
  const SettingsMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final torrentkey = ref.watch(abTorrentkeyProvider).valueOrNull ?? "";
    final torrentkeyPreview = switch (torrentkey.length) {
      0 => "<unset>",
      < 4 => "***",
      _ => "${torrentkey.substring(0, 4)}...",
    };

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "AnimeBytes",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ListTile(
          title: const Text("Username"),
          subtitle: Text(
            ref.watch(abUsernameProvider).valueOrNull ?? "<unset>",
          ),
          onTap: () async {
            final newname = await showInputDialog(
              context: context,
              title: "AnimeBytes username",
              hintText: "Enter your username",
              initialValue: ref.watch(abUsernameProvider).valueOrNull,
            );

            if (newname != null) {
              preferences.setString(Preferences.animebytesUsername, newname);
            }
          },
        ),
        ListTile(
          title: const Text("Torrent key"),
          subtitle: Text(torrentkeyPreview),
          onTap: () async {
            final newkey = await showInputDialog(
              context: context,
              title: "AnimeBytes torrent key",
              hintText: "Enter your torrent key",
              initialValue: ref.watch(abTorrentkeyProvider).valueOrNull,
            );

            if (newkey != null) {
              preferences.setString(Preferences.animebytesTorrentkey, newkey);
            }
          },
        ),
      ],
    );
  }
}

Future<String?> showInputDialog({
  required BuildContext context,
  required String title,
  String? hintText,
  String? initialValue,
}) async {
  final controller = TextEditingController(text: initialValue);

  return await showDialog<String>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: const Text("OK"),
          ),
        ],
      );
    },
  );
}
