import 'package:tetsu_app/main.dart';
import 'package:tetsu_app/preferences.dart';

String humanBytes(int bytes) {
  if (bytes < 1024) {
    return "$bytes B";
  }

  if (bytes < 1024 * 1024) {
    return "${(bytes / 1024).toStringAsFixed(1)} KB";
  }

  if (bytes < 1024 * 1024 * 1024) {
    return "${(bytes / 1024 / 1024).toStringAsFixed(1)} MB";
  }

  return "${(bytes / 1024 / 1024 / 1024).toStringAsFixed(1)} GB";
}

String prefTitle({
  String? kanji,
  String? romaji,
  String? english,
  String fallback = "",
}) {
  if (kanji != null && kanji.isEmpty) kanji = null;
  if (romaji != null && romaji.isEmpty) romaji = null;
  if (english != null && english.isEmpty) english = null;

  final language = preferences
      .getString(
        Preferences.titleDisplayLanguage,
        defaultValue: "romaji",
      )
      .getValue();

  if (language == "kanji") {
    return kanji ?? romaji ?? english ?? fallback;
  }

  if (language == "english") {
    return english ?? romaji ?? kanji ?? fallback;
  }

  return romaji ?? kanji ?? english ?? fallback;
}
