import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/tetsu/anime.dart';
import 'package:tetsu_app/apis/tetsu/file.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/adaptive_scaffold.dart';
import 'package:tetsu_app/widgets/anime_card.dart';
import 'package:tetsu_app/widgets/main_navigation.dart';

class WatchMainPane extends ConsumerWidget {
  const WatchMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anime = ref.watch(tetsuAllAnimeProvider);

    final extra = GoRouterState.of(context).extra as WatchExtra?;

    return AdaptiveScaffold(
      appBar: AppBar(
        title: const Text("Watch"),
      ),
      sidePanel: MainNavigation(),
      body: anime.when(
        data: (animes) {
          final filtered = extra?.category != null
              ? animes.where((a) => a.category == extra?.category).toList()
              : animes;

          return RefreshIndicator(
            onRefresh: () => ref.refresh(tetsuAllAnimeProvider.future),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 5 / 7,
                  ),
                  itemCount: filtered.length,
                  itemBuilder: (context, index) {
                    final anime = filtered[index];

                    // preload this provider, so that the image will
                    // immediately be there on the details page
                    ref.read(tetsuAnimeProvider(anime.aid));

                    return AnimeCard(
                      key: ValueKey(anime.aid),
                      onTap: () {
                        context.push("/watch/${anime.aid}");
                      },
                      contextMenuBuilder: () => ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: const Text("Details"),
                            onTap: () {
                              context.push("/watch/${anime.aid}");
                            },
                          ),
                          ListTile(
                            title: const Text("Mark as watched"),
                            onTap: () async {
                              final episodes = Map.fromEntries(
                                (await ref.watch(
                                  tetsuEpisodesProvider(anime.aid).future,
                                ))
                                    .map((e) =>
                                        MapEntry(e.eid, int.tryParse(e.epno))),
                              );

                              final files = await ref
                                  .watch(tetsuFilesProvider(anime.aid).future);

                              // find the file with the highest epno (ignoring C01, S01, etc)
                              TetsuFile? file;
                              int? latestEpno;
                              for (final f in files) {
                                final epno = episodes[f.eid];
                                if (epno == null) continue;
                                if (latestEpno == null || epno > latestEpno) {
                                  latestEpno = epno;
                                  file = f;
                                }
                              }

                              if (file != null) {
                                await tetsu.setWatchProgress(file.path, 1.0);
                                ref.invalidate(tetsuAllAnimeProvider);
                              }

                              AnimeCard.hideAnyContextMenu();
                            },
                          ),
                        ],
                      ),
                      imageTag: "anidb-${anime.aid}",
                      imageUrl:
                          "https://cdn.anidb.net/images/main/${anime.picname}",
                      imageZoomable: false,
                      title: prefTitle(
                        kanji: anime.kanjiName,
                        romaji: anime.romajiName,
                        english: anime.englishName,
                      ),
                      actions: const [],
                      progress: anime.watchProgress?.animeProgress,
                      downloaded: 1.0,
                    );
                  },
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(err.toString()),
              Text(stack.toString()),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(tetsuAllAnimeProvider);
                },
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WatchExtra {
  final TetsuAnimeCategory? category;

  const WatchExtra.all() : category = null;
  const WatchExtra.inProgress() : category = TetsuAnimeCategory.inProgress;
  const WatchExtra.new_() : category = TetsuAnimeCategory.new_;
  const WatchExtra.completed() : category = TetsuAnimeCategory.completed;
  const WatchExtra.dropped() : category = TetsuAnimeCategory.dropped;
}
