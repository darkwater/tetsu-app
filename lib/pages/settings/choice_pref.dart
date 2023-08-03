import 'package:flutter/material.dart';
import 'package:tetsu_app/main.dart';

class ChoicePreference extends StatelessWidget {
  final String title;
  final String preferenceKey;
  final List<String> choices;
  final String defaultValue;

  const ChoicePreference({
    super.key,
    required this.title,
    required this.preferenceKey,
    required this.choices,
    required this.defaultValue,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      // subtitle: Text(subtitle),
      subtitle: StreamBuilder<String>(
        stream: preferences.getString(
          preferenceKey,
          defaultValue: defaultValue,
        ),
        builder: (context, snapshot) {
          String value = snapshot.data ?? defaultValue;

          return Text(value);
        },
      ),
      onTap: () async {
        final value = await showChoiceDialog(
          context: context,
          title: title,
          choices: choices,
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

Future<String?> showChoiceDialog({
  required BuildContext context,
  required String title,
  required List<String> choices,
  required String initialValue,
}) async {
  String? value = await showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final choice in choices)
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(choice),
                  ),
                  selected: choice == initialValue,
                  onTap: () {
                    Navigator.of(context).pop(choice);
                  },
                ),
            ],
          ),
        ),
      );
    },
  );

  return value;
}
