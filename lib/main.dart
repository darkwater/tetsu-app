import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:streaming_shared_preferences/streaming_shared_preferences.dart";
import "package:tetsu_app/pages/scaffold.dart";

import "router.dart";

late final StreamingSharedPreferences preferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  preferences = await StreamingSharedPreferences.instance;

  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: "Tetsu",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
