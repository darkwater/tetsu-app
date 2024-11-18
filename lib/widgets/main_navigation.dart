import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
