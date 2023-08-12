import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/tetsu/mpv/message.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/providers/mpv.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/anime_card.dart';

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

    final header = AnimeCard(
      imageTag: "anidb-${anime.aid}",
      imageUrl: "https://cdn.anidb.net/images/main/${anime.picname}",
      // actions: [
      //   if (anime.links.animebytesId != null)
      //     TextButton.icon(
      //       icon: const Icon(Icons.download),
      //       label: Text("Torrents"),
      //       onPressed: () {
      //         context.push("/animebytes/${anime.links.animebytesId}");
      //       },
      //     )
      //   else
      //     TextButton.icon(
      //       icon: const Icon(Icons.refresh),
      //       label: Text("Search AB"),
      //       onPressed: () async {
      //         print("searching");
      //         final res = await ref.read(abSearchResultsProvider(
      //           anime.romajiName.split(" ").take(2).join(" "),
      //           {},
      //         ).future);
      //         print("${res.length} results");
      //         ref.invalidate(tetsuAllAnimeProvider);
      //       },
      //     ),
      //   if (anime.links.annId != null)
      //     TextButton.icon(
      //       onPressed: () {},
      //       icon: const Icon(Icons.info_outline),
      //       label: Text("ANN ${anime.links.annId}"),
      //     ),
      //   if (anime.links.malId != null)
      //     TextButton.icon(
      //       onPressed: () {},
      //       icon: const Icon(Icons.info_outline),
      //       label: Text("MAL ${anime.links.malId}"),
      //     ),
      //   if (anime.links.anilistId != null)
      //     TextButton.icon(
      //       onPressed: () {},
      //       icon: const Icon(Icons.info_outline),
      //       label: Text("AniList ${anime.links.anilistId}"),
      //     ),
      // ],
    );

    if (eProvider.isLoading || fProvider.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text(prefTitle(
            kanji: anime.kanjiName,
            romaji: anime.romajiName,
            english: anime.englishName,
          )),
        ),
        body: Row(
          children: [
            SizedBox(
              width: 240,
              child: Column(
                children: [
                  header,
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      );
    }

    final episodes = eProvider.requireValue;
    final files = fProvider.requireValue;

    final categories = {
      1: "Episodes",
      2: "Special eps",
      3: "Credits",
      4: "Trailers",
      5: "Parodies",
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
      body: Row(
        children: [
          SizedBox(
            width: 240,
            child: ListView(
              children: [
                header,
                for (final cat in categories.entries)
                  ListTile(
                    leading: (cat.key == selectedCategory)
                        ? Icon(Icons.movie)
                        : Icon(Icons.movie_outlined),
                    title: Text(cat.value),
                    selected: cat.key == selectedCategory,
                    onTap: () {
                      ref.read(_selectedCategoryProvider.notifier).state =
                          cat.key;
                    },
                  ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                await Future.wait([
                  ref.refresh(tetsuEpisodesProvider(aid).future),
                  ref.refresh(tetsuFilesProvider(aid).future),
                ]);
              },
              child: ListView(
                children: [
                  // SizedBox(
                  //   height: 300,
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       ZoomableNetworkImage(
                  //         tag: "anidb-$aid",
                  //         url: "https://cdn.anidb.net/images/main/${anime.picname}",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // header,
                  // if (categories.length != 1 ||
                  //     categories.keys.first != selectedCategory)
                  //   _TabBar(categories),
                  for (final (file, episode) in entries)
                    ListTile(
                      leading: SizedBox(
                        width: 34,
                        child: Text(
                          episode.epno.replaceFirst(RegExp(r"^0"), ""),
                          textAlign: TextAlign.end,
                          textScaleFactor: 1.5,
                        ),
                      ),
                      title: Text(prefTitle(
                        kanji: episode.kanji,
                        romaji: episode.romaji,
                        english: episode.eng,
                        fallback: file.path.split("/").last,
                      )),
                      subtitle: Text(file.path),
                      onTap: () async {
                        final mpv = ref.read(mpvProvider);
                        mpv.sendControl(ControlMessage.start());
                        await Future.delayed(Duration(seconds: 1));
                        mpv.send(MpvRequest(command: ["loadfile", file.path]));
                      },
                    ),
                ],
              ),
            ),
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
