import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/preferences.dart';

import 'choice_pref.dart';
import 'input_pref.dart';

class SettingsMainPane extends ConsumerWidget {
  const SettingsMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          _Header("AnimeBytes"),
          InputPreference(
            title: "Username",
            remoteKey: "animebytes_username",
            hintText: "Enter your username",
          ),
          InputPreference(
            title: "Torrent key",
            remoteKey: "animebytes_torrentkey",
            hintText: "Enter your torrent key",
            semiConceal: true,
          ),
          _Header("Display"),
          ChoicePreference(
            title: "Title language",
            preferenceKey: Preferences.titleDisplayLanguage,
            defaultValue: "romaji",
            choices: const ["kanji", "romaji", "english"],
          ),
          _Header("Users"),
          ListTile(
            leading: Icon(Icons.person, color: Colors.red),
            title: Text("dark"),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.deepPurple[300]),
            title: Text("arena"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Add user"),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String text;

  const _Header(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
