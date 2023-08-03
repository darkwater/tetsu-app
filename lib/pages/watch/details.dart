import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/image.dart';

final _selectedCategoryProvider = StateProvider.autoDispose<int>((ref) => 1);

class WatchDetailsPage extends ConsumerWidget {
  final int aid;

  const WatchDetailsPage(this.aid, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aProvider = ref.watch(tetsuAnimeProvider(aid));

    if (aProvider.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Details"),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final anime = aProvider.requireValue;
    final eProvider = ref.watch(tetsuEpisodesProvider(aid));
    final fProvider = ref.watch(tetsuFilesProvider(aid));

    if (eProvider.isLoading || fProvider.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text(prefTitle(
            kanji: anime.kanjiName,
            romaji: anime.romajiName,
            english: anime.englishName,
          )),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final episodes = eProvider.requireValue;
    final files = fProvider.requireValue;

    final categories = {
      1: "Regular",
      2: "Special",
      3: "Credit",
      4: "Trailer",
      5: "Parody",
      6: "Other",
    };

    final entries = files
        .map((f) => (f, episodes.firstWhere((e) => e.eid == f.eid)))
        .toList();

    categories.removeWhere((id, _) => !entries.any((e) => e.$2.etype == id));

    final selectedCategory = ref.watch(_selectedCategoryProvider);

    entries.retainWhere((e) => e.$2.etype == selectedCategory);

    return Scaffold(
      appBar: AppBar(
        title: Text(prefTitle(
          kanji: anime.kanjiName,
          romaji: anime.romajiName,
          english: anime.englishName,
        )),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ZoomableNetworkImage(
                  tag: "anidb-$aid",
                  url: "https://cdn.anidb.net/images/main/${anime.picname}",
                ),
              ],
            ),
          ),
          if (categories.length != 1 ||
              categories.keys.first != selectedCategory)
            _TabBar(categories),
          for (final (file, episode) in entries)
            ListTile(
              title: Text(prefTitle(
                kanji: episode.kanji,
                romaji: episode.romaji,
                english: episode.eng,
              )),
              subtitle: Text(file.path),
            ),
        ],
      ),
    );
  }
}

class _TabBar extends ConsumerStatefulWidget {
  final Map<int, String> categories;

  const _TabBar(this.categories);

  @override
  ConsumerState<_TabBar> createState() => _TabBarState();
}

class _TabBarState extends ConsumerState<_TabBar>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(
      length: widget.categories.length,
      vsync: this,
    );

    controller.addListener(() {
      ref.read(_selectedCategoryProvider.notifier).state =
          widget.categories.keys.toList()[controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: widget.categories.values.map((v) => Tab(text: v)).toList(),
      controller: controller,
    );
  }
}
