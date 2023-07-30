import "package:adaptive_navigation/adaptive_navigation.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:tetsu_app/pages/animebytes/main.dart";
import "package:tetsu_app/pages/settings/main.dart";
import "package:tetsu_app/pages/torrents/small.dart";

import "torrents/main.dart";

final pages = [
  _Page(
    label: "Animebytes",
    path: "/animebytes",
    icon: Icons.cloud_outlined,
    selectedIcon: Icons.cloud,
    main: (_) => AnimebytesMainPane(),
  ),
  _Page(
    label: "Torrents",
    path: "/torrents",
    icon: Icons.download_outlined,
    selectedIcon: Icons.download,
    main: (_) => TorrentsMainPane(),
    small: (_) => TorrentsSmallPane(),
  ),
  _Page(
    label: "Settings",
    path: "/settings",
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
    main: (_) => SettingsMainPane(),
  ),
];

final selectedIndexProvider = StateProvider<int>((_) => 0);

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const MainPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    return AdaptiveNavigationScaffold(
      appBar: AppBar(
        title: Text(pages[selectedIndex].label),
      ),
      // appBarBreakpoint: Breakpoints.smallAndUp,
      // internalAnimations: false,
      destinations: pages
          .asMap()
          .entries
          .map((entry) => entry.value.destination(selectedIndex == entry.key))
          .toList(),
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) =>
          ref.read(selectedIndexProvider.notifier).state = index,
      body: pages[selectedIndex].main(context),
      // smallBody: _pages[selectedIndex].small ?? _pages[selectedIndex].main,
    );
  }
}

class _Page {
  final String label;
  final String path;
  final IconData icon;
  final IconData? selectedIcon;
  final Widget Function(BuildContext) main;
  final Widget Function(BuildContext)? small;

  const _Page({
    required this.label,
    required this.path,
    required this.icon,
    this.selectedIcon,
    required this.main,
    this.small,
  });

  AdaptiveScaffoldDestination destination(bool selected) =>
      AdaptiveScaffoldDestination(
        title: label,
        icon: (selected && selectedIcon != null) ? selectedIcon! : icon,
        // selectedIcon: selectedIcon != null ? Icon(selectedIcon) : null,
      );
}
