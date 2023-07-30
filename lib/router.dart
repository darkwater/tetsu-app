import "package:adaptive_navigation/adaptive_navigation.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:tetsu_app/pages/animebytes/group.dart";
import "package:tetsu_app/pages/animebytes/main.dart";
import "package:tetsu_app/pages/settings/main.dart";
import "package:tetsu_app/pages/torrents/main.dart";

import "pages/scaffold.dart";

final router = GoRouter(
  initialLocation: "/animebytes",
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final selectedIndex = pages
            .asMap()
            .entries
            .firstWhere((entry) => entry.value.path == state.matchedLocation)
            .key;

        return AdaptiveNavigationScaffold(
          // appBar: AppBar(
          //   title: Text(pages[selectedIndex].label),
          // ),
          // appBarBreakpoint: Breakpoints.smallAndUp,
          // internalAnimations: false,
          destinations: pages
              .asMap()
              .entries
              .map((entry) =>
                  entry.value.destination(selectedIndex == entry.key))
              .toList(),
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) => context.go(pages[index].path),
          // ref.read(selectedIndexProvider.notifier).state = index,
          body: child,
          // smallBody: _pages[selectedIndex].small ?? _pages[selectedIndex].main,
        );
      },
      routes: [
        GoRoute(
          path: "/animebytes",
          pageBuilder: (context, state) => NoTransitionPage(
            child: AnimebytesMainPane(),
          ),
          routes: [
            GoRoute(
              path: ":id",
              builder: (context, state) => AnimebytesGroupPage(
                int.parse(state.pathParameters["id"]!),
              ),
            ),
          ],
        ),
        GoRoute(
          path: "/torrents",
          pageBuilder: (context, state) => NoTransitionPage(
            child: TorrentsMainPane(),
          ),
        ),
        GoRoute(
          path: "/settings",
          pageBuilder: (context, state) => NoTransitionPage(
            child: SettingsMainPane(),
          ),
        ),
      ],
    ),
  ],
);
