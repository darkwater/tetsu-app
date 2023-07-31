import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/anichart/queries/__generated__/airing.data.gql.dart';
import 'package:tetsu_app/providers/airing.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/widgets/html_text.dart';
import 'package:tetsu_app/widgets/image.dart';

class AiringMainPane extends ConsumerWidget {
  const AiringMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(airingProvider).when(
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

                return _Card(media: media);
              },
            );
          }),
        );
  }
}

class _Card extends ConsumerWidget {
  const _Card({
    super.key,
    required this.media,
  });

  final GAlAiringData_Page_media media;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: _LeftSide(media: media),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: _RightSide(media: media),
          ),
        ],
      ),
    );
  }
}

class _LeftSide extends ConsumerWidget {
  const _LeftSide({
    super.key,
    required this.media,
  });

  final GAlAiringData_Page_media media;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studio = media.studios!.nodes!
        .whereType<GAlAiringData_Page_media_studios_nodes>()
        .where((s) => s.isAnimationStudio)
        .firstOrNull
        ?.name;

    return Stack(
      children: [
        Positioned.fill(
          child: ZoomableNetworkImage(
            tag: "airing-${media.id}",
            url: media.coverImage!.extraLarge!,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          top: null,
          child: Material(
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    media.title!.romaji!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (studio != null) ...[
                    const SizedBox(height: 6),
                    Text(
                      studio,
                      // style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      //       color: Theme.of(context).colorScheme.primary,
                      //     ),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _RightSide extends ConsumerWidget {
  const _RightSide({
    super.key,
    required this.media,
  });

  final GAlAiringData_Page_media media;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nextAiring = media.nextAiringEpisode;

    return Column(
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
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
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
            ],
          ),
        ),
      ],
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

String _toTitleCase(String text) {
  return text
      .split('_')
      .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
      .join(' ');
}
