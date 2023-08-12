import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/providers/mpv.dart';

class MpvMainPage extends ConsumerWidget {
  const MpvMainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(ref.watch(mpvIsRunningProvider).toString()),
      ),
    );
  }
}
