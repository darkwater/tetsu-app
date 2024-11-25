import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/tetsu/anime.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/router.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouterState.of(context).path;
    final currentExtra = GoRouterState.of(context).extra;

    return Drawer(
      child: ListView(
        children: [
          const SizedBox(height: 16),
          for (final page in pages) ...[
            ListTile(
              leading: Icon(
                currentPath == page.path ? page.selectedIcon : page.icon,
              ),
              title: Text(page.label),
              onTap: () {
                GoRouter.of(context).go(page.path, extra: page.defaultExtra);
              },
              selected: currentPath == page.path,
            ),
            for (final subnav in page.subnav)
              ListTile(
                leading: const SizedBox(),
                title: Text(subnav.label),
                trailing:
                    subnav.trailing != null ? subnav.trailing!(context) : null,
                onTap: () {
                  GoRouter.of(context).go(page.path, extra: subnav.extra);
                },
                selected:
                    currentPath == page.path && currentExtra == subnav.extra,
              ),
            const Divider(),
          ],
        ],
      ),
    );
  }
}

class WatchSubnavCount extends ConsumerWidget {
  final TetsuAnimeCategory? category;

  const WatchSubnavCount(this.category, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(tetsuAllAnimeProvider).when(
          data: (animes) => category != null
              ? Text(
                  "${animes.where((a) => a.category == category).length}",
                )
              : Text("${animes.length}"),
          loading: () => SizedBox.shrink(),
          error: (e, s) => SizedBox.shrink(),
        );
  }
}
