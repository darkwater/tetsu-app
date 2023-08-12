import "package:adaptive_navigation/adaptive_navigation.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:go_router/go_router.dart";
import "package:tetsu_app/apis/tetsu/mpv/message.dart";
import "package:tetsu_app/pages/airing/main.dart";
import "package:tetsu_app/pages/animebytes/group.dart";
import "package:tetsu_app/pages/animebytes/main.dart";
import "package:tetsu_app/pages/mpv/main.dart";
import "package:tetsu_app/pages/settings/main.dart";
import "package:tetsu_app/pages/torrents/main.dart";
import "package:tetsu_app/pages/watch/details.dart";
import "package:tetsu_app/pages/watch/main.dart";
import "package:tetsu_app/providers/mpv.dart";

final pages = [
  _Page(
    label: "Watch",
    path: "/",
    icon: Icons.folder_outlined,
    selectedIcon: Icons.folder,
    main: (_) => WatchMainPane(),
  ),
  _Page(
    label: "Airing",
    path: "/airing",
    icon: Icons.live_tv_outlined,
    selectedIcon: Icons.live_tv,
    main: (_) => AiringMainPane(),
  ),
  _Page(
    label: "Animebytes",
    path: "/animebytes",
    icon: Icons.cloud_outlined,
    selectedIcon: Icons.cloud,
    main: (_) => AnimebytesMainPane(),
  ),
  _Page(
    label: "Transmission",
    path: "/transmission",
    icon: Icons.download_outlined,
    selectedIcon: Icons.download,
    main: (_) => TorrentsMainPane(),
  ),
  _Page(
    label: "Settings",
    path: "/settings",
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
    main: (_) => SettingsMainPane(),
  ),
];

final routes = [
  GoRoute(
    path: "/animebytes/:id",
    builder: (context, state) => AnimebytesGroupPage(
      int.parse(state.pathParameters["id"]!),
    ),
  ),
  GoRoute(
    path: "/watch/:aid",
    builder: (context, state) => WatchDetailsPage(
      int.parse(
        state.pathParameters["aid"]!,
      ),
    ),
  ),
  GoRoute(
    path: "/mpv",
    builder: (context, state) => MpvMainPage(),
  ),
];

final router = GoRouter(
  initialLocation: "/",
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        print(state.fullPath);

        final selectedIndex = pages
            .asMap()
            .entries
            .firstWhere((entry) => entry.value.path == state.matchedLocation)
            .key;

        return Consumer(
          child: child,
          builder: (context, ref, child) => AdaptiveNavigationScaffold(
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
            body: child!,
            // smallBody: _pages[selectedIndex].small ?? _pages[selectedIndex].main,
            // floatingActionButton: ref.watch(mpvIsRunningProvider).isLoading
            //     ? null
            //     : FloatingActionButton(
            //         onPressed: () => context.go("/transmission"),
            //         child: Icon(Icons.airplay),
            //       ),
            floatingActionButton: ref.watch(mpvIsRunningProvider)
                ? FloatingActionButton(
                    child: Icon(Icons.airplay),
                    onPressed: () {
                      final mpv = ref.read(mpvProvider);
                      mpv.sendControl(ControlMessage.stop());
                    },
                  )
                : null,
          ),
        );
      },
      routes: pages.map((page) => page.route()).toList(),
    ),
    ...routes
  ],
);

class _Page {
  final String label;
  final String path;
  final IconData icon;
  final IconData? selectedIcon;
  final Widget Function(BuildContext) main;
  final List<RouteBase> routes;

  const _Page({
    required this.label,
    required this.path,
    required this.icon,
    this.selectedIcon,
    required this.main,
    this.routes = const [],
  });

  AdaptiveScaffoldDestination destination(bool selected) =>
      AdaptiveScaffoldDestination(
        title: label,
        icon: (selected && selectedIcon != null) ? selectedIcon! : icon,
        // selectedIcon: selectedIcon != null ? Icon(selectedIcon) : null,
      );

  GoRoute route() => GoRoute(
        path: path,
        pageBuilder: (context, state) => NoTransitionPage(
          child: main(context),
        ),
        routes: routes,
      );
}
