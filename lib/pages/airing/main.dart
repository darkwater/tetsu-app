import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/anichart/queries/__generated__/airing.data.gql.dart';
import 'package:tetsu_app/providers/airing.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/utils.dart';
import 'package:tetsu_app/widgets/anime_card.dart';
import 'package:tetsu_app/widgets/html_text.dart';

class AiringMainPane extends ConsumerWidget {
  const AiringMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Airing"),
      ),
      body: ref.watch(airingProvider).when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Text(err.toString()),
            data: (data) => LayoutBuilder(builder: (context, constraints) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth > 800 ? 2 : 1,
                  childAspectRatio: 7 / 4,
                ),
                itemCount: data.Page!.media!.length,
                itemBuilder: (context, index) {
                  final media = data.Page!.media![index]!;

                  final studio = (media.studios!.nodes! as Iterable)
                      .whereType<GAlAiringData_Page_media_studios_nodes>()
                      .where((s) => s.isAnimationStudio)
                      .firstOrNull
                      ?.name;

                  final nextAiring = media.nextAiringEpisode;

                  final child = Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (nextAiring != null) ...[
                        Text(
                          "Ep ${nextAiring.episode} of ${media.episodes ?? "?"} airing in",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _humanTimeDistance(nextAiring.timeUntilAiring),
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                      ],
                      Expanded(
                        child: Opacity(
                          opacity: 0.8,
                          child: HtmlText(
                            media.description ?? "",
                          ),
                        ),
                      ),
                    ],
                  );

                  final actions = [
                    IconButton(
                      onPressed: () async {
                        print(media.idMal);

                        final query =
                            media.title!.romaji!.split(" ").take(2).join(" ");

                        final res = await ref.read(
                          abSearchResultsProvider(query, {}).future,
                        );

                        final abId = res
                            .where((element) => element.malId == media.idMal)
                            .firstOrNull
                            ?.id;

                        print(abId);

                        if (abId != null) {
                          context.push("/animebytes/$abId");
                        }
                      },
                      icon: Icon(Icons.download_outlined),
                    ),
                  ];

                  return AnimeCard(
                    imageTag: "anilist-${media.id}",
                    imageUrl: media.coverImage!.extraLarge,
                    title: prefTitle(
                      kanji: media.title!.native,
                      romaji: media.title!.romaji,
                      english: media.title!.english,
                    ),
                    subtitle: studio,
                    actions: actions,
                    body: child,
                  );
                },
              );
            }),
          ),
    );
  }
}

String _humanTimeDistance(int seconds) {
  final duration = Duration(seconds: seconds);

  if (duration.inDays > 0) {
    return "${duration.inDays} days, ${duration.inHours.remainder(24)} hours";
  } else if (duration.inHours > 0) {
    return "${duration.inHours} hours, ${duration.inMinutes.remainder(60)} minutes";
  } else if (duration.inMinutes > 0) {
    return "${duration.inMinutes} minutes";
  } else {
    return "${duration.inSeconds} seconds";
  }
}
