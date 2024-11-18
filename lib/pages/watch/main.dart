import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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

    final extra = GoRouterState.of(context).extra as WatchExtra;

    return AdaptiveScaffold(
      appBar: AppBar(
        title: const Text("Watch"),
      ),
      sidePanel: MainNavigation(),
      body: anime.when(
        data: (animes) {
          final filtered = animes.where((a) {
            final progress = a.watchProgress?.animeProgress ?? 0;
            final watchedRecently = a.watchProgress?.lastUpdated.isBefore(
                  DateTime.now().subtract(const Duration(hours: 24)),
                ) ??
                false;

            return switch (extra) {
              WatchExtra.all => true,
              WatchExtra.inProgress =>
                !watchedRecently && progress > 0 && progress < 1,
              WatchExtra.new_ => progress == 0,
              WatchExtra.completed => progress == 1,
              WatchExtra.dropped => watchedRecently && progress < 1,
            };
          }).toList();

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

enum WatchExtra {
  inProgress,
  new_,
  completed,
  dropped,
  all,
}
