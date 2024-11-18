import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:tetsu_app/pages/airing/main.dart";
import "package:tetsu_app/pages/animebytes/group.dart";
import "package:tetsu_app/pages/animebytes/main.dart";
import "package:tetsu_app/pages/mpv/main.dart";
import "package:tetsu_app/pages/settings/main.dart";
import "package:tetsu_app/pages/torrents/main.dart";
import "package:tetsu_app/pages/watch/details.dart";
import "package:tetsu_app/pages/watch/main.dart";

final pages = [
  Page(
    label: "Watch",
    path: "/",
    icon: Icons.folder_outlined,
    selectedIcon: Icons.folder,
    main: (_) => WatchMainPane(),
    defaultExtra: WatchExtra.inProgress,
    subnav: [
      Subnav(
        label: "In progress",
        extra: WatchExtra.inProgress,
      ),
      Subnav(
        label: "New",
        extra: WatchExtra.new_,
      ),
      Subnav(
        label: "Completed",
        extra: WatchExtra.completed,
      ),
      Subnav(
        label: "Dropped",
        extra: WatchExtra.dropped,
      ),
      Subnav(
        label: "All",
        extra: WatchExtra.all,
      ),
    ],
  ),
  Page(
    label: "Airing",
    path: "/airing",
    icon: Icons.live_tv_outlined,
    selectedIcon: Icons.live_tv,
    main: (_) => AiringMainPane(),
  ),
  Page(
    label: "Animebytes",
    path: "/animebytes",
    icon: Icons.cloud_outlined,
    selectedIcon: Icons.cloud,
    main: (_) => AnimebytesMainPane(),
  ),
  Page(
    label: "Transmission",
    path: "/transmission",
    icon: Icons.download_outlined,
    selectedIcon: Icons.download,
    main: (_) => TorrentsMainPane(),
  ),
  Page(
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
  initialExtra: WatchExtra.inProgress,
  routes: [
    ...pages.map((page) => page.route()),
    // ShellRoute(
    //   builder: (context, state, child) {
    //     print(state.fullPath);

    //     final selectedIndex = pages
    //         .asMap()
    //         .entries
    //         .firstWhere((entry) => entry.value.path == state.matchedLocation)
    //         .key;

    //     return Consumer(
    //       child: child,
    //       builder: (context, ref, child) => AdaptiveNavigationScaffold(
    //         // appBar: AppBar(
    //         //   title: Text(pages[selectedIndex].label),
    //         // ),
    //         // appBarBreakpoint: Breakpoints.smallAndUp,
    //         // internalAnimations: false,
    //         destinations: pages
    //             .asMap()
    //             .entries
    //             .map((entry) =>
    //                 entry.value.destination(selectedIndex == entry.key))
    //             .toList(),
    //         selectedIndex: selectedIndex,
    //         onDestinationSelected: (index) => context.go(pages[index].path),
    //         // ref.read(selectedIndexProvider.notifier).state = index,
    //         body: child!,
    //         // smallBody: _pages[selectedIndex].small ?? _pages[selectedIndex].main,
    //         // floatingActionButton: ref.watch(mpvIsRunningProvider).isLoading
    //         //     ? null
    //         //     : FloatingActionButton(
    //         //         onPressed: () => context.go("/transmission"),
    //         //         child: Icon(Icons.airplay),
    //         //       ),
    //         floatingActionButton: ref.watch(mpvIsRunningProvider)
    //             ? FloatingActionButton(
    //                 child: Icon(Icons.airplay),
    //                 onPressed: () {
    //                   final mpv = ref.read(mpvProvider);
    //                   mpv.sendControl(ControlMessage.stop());
    //                 },
    //               )
    //             : null,
    //       ),
    //     );
    //   },
    //   routes: pages.map((page) => page.route()).toList(),
    // ),
    ...routes
  ],
);

class Page {
  final String label;
  final String path;
  final Object? defaultExtra;
  final IconData icon;
  final IconData selectedIcon;
  final Widget Function(BuildContext) main;
  final List<RouteBase> routes;
  final List<Subnav> subnav;

  const Page({
    required this.label,
    required this.path,
    this.defaultExtra,
    required this.icon,
    required this.selectedIcon,
    required this.main,
    this.subnav = const [],
    this.routes = const [],
  });

  // AdaptiveScaffoldDestination destination(bool selected) =>
  //     AdaptiveScaffoldDestination(
  //       title: label,
  //       icon: (selected && selectedIcon != null) ? selectedIcon! : icon,
  //       // selectedIcon: selectedIcon != null ? Icon(selectedIcon) : null,
  //     );

  GoRoute route() => GoRoute(
        path: path,
        pageBuilder: (context, state) => NoTransitionPage(
          child: main(context),
        ),
        routes: routes,
      );
}

class Subnav {
  final String label;
  final Object? extra;

  const Subnav({
    required this.label,
    required this.extra,
  });
}
