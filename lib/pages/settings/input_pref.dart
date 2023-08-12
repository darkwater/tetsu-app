import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/providers/tetsu.dart';

class InputPreference extends ConsumerWidget {
  final String title;
  final String? preferenceKey;
  final String? remoteKey;
  final String hintText;
  final bool semiConceal;

  const InputPreference({
    super.key,
    required this.title,
    required this.hintText,
    this.preferenceKey,
    this.remoteKey,
    this.semiConceal = false,
  });

  String processSubtitle(String value) {
    if (semiConceal && value != "<unset>") {
      value = switch (value.length) {
        0 => "<unset>",
        < 4 => "***",
        _ => "${value.substring(0, 4)}...",
      };
    }

    return value;
  }

  Widget subtitle() {
    if (preferenceKey != null) {
      return StreamBuilder<String>(
        stream: preferences.getString(
          preferenceKey!,
          defaultValue: "<unset>",
        ),
        builder: (context, snapshot) {
          String value = snapshot.data ?? "<unset>";
          return Text(processSubtitle(value));
        },
      );
    } else if (remoteKey != null) {
      return Consumer(
        builder: (context, ref, child) {
          final prov = ref.watch(TetsuSettingValueProvider(remoteKey!));
          if (prov.isLoading) return Text("Loading...");
          if (prov.hasError) return Text("Error: ${prov.error}");

          String value = prov.requireValue ?? "<unset>";
          return Text(processSubtitle(value));
        },
      );
    } else {
      throw "InputPreference must have either preferenceKey or remoteKey";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle(),
      onTap: () async {
        final value = await showInputDialog(
          context: context,
          title: title,
          hintText: hintText,
          initialValue: preferenceKey != null
              ? preferences
                  .getString(preferenceKey!, defaultValue: "")
                  .getValue()
              : ref.read(tetsuSettingValueProvider(remoteKey!)).requireValue,
        );

        if (value != null) {
          if (preferenceKey != null) {
            preferences.setString(preferenceKey!, value);
          } else if (remoteKey != null) {
            await tetsu.setSetting(remoteKey!, value);
            ref.invalidate(tetsuSettingsProvider);
          }
        }
      },
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
          autofocus: true,
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
