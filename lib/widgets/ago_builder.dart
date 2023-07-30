import 'package:flutter/material.dart';

class AgoBuilder extends StatelessWidget {
  final DateTime when;
  final Widget Function(BuildContext, String) builder;

  const AgoBuilder({
    required this.when,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: agoStream(when),
      builder: (context, snapshot) {
        return builder(context, snapshot.data ?? "");
      },
    );
  }
}

Stream<String> agoStream(DateTime when) async* {
  while (true) {
    final diff = DateTime.now().difference(when).abs();
    if (diff.inSeconds < 120) {
      yield "${diff.inSeconds}s";
      await Future.delayed(
          Duration(milliseconds: 1000 - diff.inMilliseconds % 1000));
    } else if (diff.inMinutes < 120) {
      yield "${diff.inMinutes}m";
      await Future.delayed(Duration(seconds: 60 - diff.inSeconds % 60));
    } else if (diff.inHours < 48) {
      yield "${diff.inHours}h";
      await Future.delayed(Duration(minutes: 60 - diff.inMinutes % 60));
    } else if (diff.inDays < 60) {
      yield "${diff.inDays}d";
      return;
    } else if (diff.inDays < 365) {
      yield "${(diff.inDays / 30.44).round()}mo";
      return;
    } else {
      yield "${(diff.inDays / 365.25).round()}y";
      return;
    }
  }
}
