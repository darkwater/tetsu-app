import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/providers/tetsu.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/anime_card.dart';

class WatchMainPane extends ConsumerWidget {
  const WatchMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anime = ref.watch(tetsuAllAnimeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Watch"),
      ),
      body: anime.when(
        data: (animes) {
          return RefreshIndicator(
            onRefresh: () => ref.refresh(tetsuAllAnimeProvider.future),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 5 / 7,
                  ),
                  itemCount: animes.length,
                  itemBuilder: (context, index) {
                    final anime = animes[index];

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
                      progress: 0.4,
                      downloaded: 0.8,
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
