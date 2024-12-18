import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quiver/iterables.dart';
import 'package:tetsu_app/apis/tetsu/mpv/message.dart';
import 'package:tetsu_app/pages/animebytes/torrent_list.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/providers/mpv.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/anime_card.dart';

final _selectedCategoryProvider =
    StateProvider.autoDispose<SidebarItem>((ref) => SidebarItem.about);

class WatchDetailsPage extends ConsumerWidget {
  final int aid;

  const WatchDetailsPage(this.aid, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aProvider = ref.watch(tetsuAnimeProvider(aid));

    if (!aProvider.hasValue && aProvider.isLoading) {
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

    final entries = files
        .map((f) => (f, episodes.firstWhere((e) => e.eid == f.eid)))
        .toList();

    final categories = SidebarItem.values.toList();
    categories.removeWhere((item) =>
        item.etype != null &&
        !entries.any(
          (e) => e.$2.etype == item.etype,
        ));

    final selectedCategory = ref.watch(_selectedCategoryProvider);

    entries.retainWhere((e) => e.$2.etype == selectedCategory.etype);

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
                for (final cat in categories)
                  ListTile(
                    leading: (cat == selectedCategory)
                        ? Icon(cat.selectedIcon)
                        : Icon(cat.icon),
                    title: Text(cat.label),
                    selected: cat == selectedCategory,
                    onTap: () {
                      ref.read(_selectedCategoryProvider.notifier).state = cat;
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
              child: switch (selectedCategory) {
                SidebarItem.about => Center(
                    child: Text(
                      prefTitle(
                        kanji: anime.kanjiName,
                        romaji: anime.romajiName,
                        english: anime.englishName,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                SidebarItem.torrents => anime.links.animebytesId != null
                    ? AbTorrentsList(anime.links.animebytesId!)
                    : Consumer(builder: (context, ref, _) {
                        ref
                            .read(abSearchResultsProvider(anime.romajiName, {})
                                .future)
                            .then((res) {
                          if (context.mounted) {
                            ref.invalidate(tetsuAllAnimeProvider);
                          }
                        });

                        return const Center(
                          child: Text("No torrents available"),
                        );
                      }),
                _ => ListView(
                    key: ValueKey(selectedCategory),
                    children: [
                      if (anime.relatedAidList.isNotEmpty)
                        SizedBox(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (final pair in zip([
                                anime.relatedAidList,
                                anime.relatedAidType,
                              ]))
                                _RelatedAnime(
                                  aid: pair.first as int,
                                  type: pair.last as String,
                                ),
                            ],
                          ),
                        ),
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
                              textScaler: TextScaler.linear(1.5),
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
                            mpv.send(
                                MpvRequest(command: ["loadfile", file.path]));
                          },
                          selected: anime.watchProgress?.lastEid == episode.eid,
                          trailing: PopupMenuButton(
                            icon: Icon(Icons.more_vert),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Mark as watched"),
                                onTap: () async {
                                  await tetsu.setWatchProgress(file.path, 1.0);
                                  ref.invalidate(tetsuAllAnimeProvider);
                                },
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class _TabBar extends ConsumerStatefulWidget {
//   final Map<int, String> categories;

//   const _TabBar(this.categories);

//   @override
//   ConsumerState<_TabBar> createState() => _TabBarState();
// }

// class _TabBarState extends ConsumerState<_TabBar>
//     with SingleTickerProviderStateMixin {
//   late final TabController controller;

//   @override
//   void initState() {
//     super.initState();

//     controller = TabController(
//       length: widget.categories.length,
//       vsync: this,
//     );

//     controller.addListener(() {
//       ref.read(_selectedCategoryProvider.notifier).state =
//           widget.categories.keys.toList()[controller.index];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       tabs: widget.categories.values.map((v) => Tab(text: v)).toList(),
//       controller: controller,
//     );
//   }
// }

class _RelatedAnime extends ConsumerWidget {
  final int aid;
  final String type;

  const _RelatedAnime({
    required this.aid,
    required this.type,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anime = ref.watch(tetsuAnimeProvider(aid));
    return AnimeCard(
      imageTag: "anidb-$aid",
      imageUrl: anime.hasValue
          ? "https://cdn.anidb.net/images/main/${anime.requireValue.picname}"
          : null,
      title: anime.valueOrNull?.romajiName,
      subtitle: switch (type) {
        "1" => "Sequel",
        "2" => "Prequel",
        "11" => "Same setting",
        "12" => "Alternative setting",
        "32" => "Alternative version",
        "41" => "Music video",
        "42" => "Character",
        "51" => "Side story",
        "52" => "Parent story",
        "61" => "Summary",
        "62" => "Full story",
        _ => "Other",
      },
      onTap: () => context.push("/watch/$aid"),
    );
  }
}

enum SidebarItem {
  about("About", icon: Icons.info_outline, selectedIcon: Icons.info),
  torrents("Torrents",
      icon: Icons.download_outlined, selectedIcon: Icons.download),
  episodes("Episodes", etype: 1),
  specials("Specials", etype: 2),
  credits("Credits", etype: 3),
  trailers("Trailers", etype: 4),
  parodies("Parodies", etype: 5),
  other("Other", etype: 6);

  final String label;
  final int? etype;
  final IconData icon;
  final IconData selectedIcon;

  const SidebarItem(
    this.label, {
    this.etype,
    this.icon = Icons.movie_outlined,
    this.selectedIcon = Icons.movie,
  });
}
