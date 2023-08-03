import 'package:flutter/material.dart';
import 'package:tetsu_app/main.dart';

class InputPreference extends StatelessWidget {
  final String title;
  final String preferenceKey;
  final String hintText;
  final bool semiConceal;

  const InputPreference({
    super.key,
    required this.title,
    required this.preferenceKey,
    required this.hintText,
    this.semiConceal = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      // subtitle: Text(subtitle),
      subtitle: StreamBuilder<String>(
        stream: preferences.getString(
          preferenceKey,
          defaultValue: "<unset>",
        ),
        builder: (context, snapshot) {
          String value = snapshot.data ?? "<unset>";

          if (semiConceal && value != "<unset>") {
            value = switch (value.length) {
              0 => "<unset>",
              < 4 => "***",
              _ => "${value.substring(0, 4)}...",
            };
          }

          return Text(value);
        },
      ),
      onTap: () async {
        final value = await showInputDialog(
          context: context,
          title: title,
          hintText: hintText,
          initialValue:
              preferences.getString(preferenceKey, defaultValue: "").getValue(),
        );

        if (value != null) {
          preferences.setString(preferenceKey, value);
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
