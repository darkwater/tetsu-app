import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tetsu_app/providers/tetsu.dart';

// part 'mpv.g.dart';

final mpvProvider = ChangeNotifierProvider((ref) => tetsu.mpv());
final mpvIsRunningProvider =
    Provider((ref) => ref.watch(mpvProvider).isRunning);

// @Riverpod(keepAlive: true)
// Stream mpvIsRunning(Ref ref) async* {
//   if (ref.watch(mpvProvider).isRunning) {
//     yield true;
//   }
// }
