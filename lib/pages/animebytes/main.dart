import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/widgets/anime_card.dart';
import 'package:tetsu_app/widgets/html_text.dart';
import 'package:tetsu_app/widgets/image.dart';

import 'torrent.dart';

final _queryInputProvider = StateProvider<String>((ref) => "");
final _queryControllerProvider = Provider((ref) => TextEditingController());

final _filtersProvider = StateProvider<Set<String>>((ref) => {});

final _activeQueryProvider = StateProvider<String?>((ref) => null);
final _activeFiltersProvider = StateProvider<Set<String>>((ref) => {});

const _chipColors = {
  "Anime - TV Series": Colors.blue,
  "Anime - TV Special": Colors.purple,
  "Anime - BD Special": Colors.deepPurple,
  "Anime - OVA": Colors.indigo,
  "Anime - Movie": Colors.teal,
  "Live Action TV Series": Colors.cyan,
  "Live Action TV Special": Colors.cyan,
  "Manga": Colors.orange,
  "Artbook": Colors.red,
  "Light Novel": Colors.green,
  "Visual Novel": Colors.pink,
};

class AnimebytesMainPane extends ConsumerWidget {
  const AnimebytesMainPane({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // cause username and password to be read and cached
    ref.read(abClientProvider);

    final query = ref.watch(_activeQueryProvider);
    final filters = ref.watch(_activeFiltersProvider);

    final AsyncValue<List<AnimebytesSearchResult>> results;
    if (query != null) {
      results = ref.watch(abSearchResultsProvider(query, filters));
    } else {
      results = AsyncValue.data(const []);
    }

    final searchBar = SafeArea(
      bottom: false,
      child: SearchBar(
        controller: ref.watch(_queryControllerProvider),
        hintText: "Search anime",
        onChanged: (value) =>
            ref.read(_queryInputProvider.notifier).state = value,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => ref.read(_activeQueryProvider.notifier).state = null,
        ),
        trailing: [
          if (results.isLoading)
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.all(12),
              child: const CircularProgressIndicator(),
            )
          else if (ref.watch(_queryInputProvider).isNotEmpty)
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () async {
                ref.read(_activeQueryProvider.notifier).state =
                    ref.read(_queryInputProvider);

                ref.read(_activeFiltersProvider.notifier).state =
                    ref.read(_filtersProvider);
              },
            ),
        ],
      ),
    );

    if (results.hasError) {
      print(results.error);
      print(results.stackTrace);
    }

    if (results.hasValue && results.value!.isEmpty || results.hasError) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("AnimeBytes"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  searchBar,
                  if (!results.isLoading)
                    if (results.hasError)
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Opacity(
                          opacity: 0.5,
                          child: Text(
                            "Error: ${results.error}",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      )
                    else if (query != null)
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Opacity(
                          opacity: 0.5,
                          child: Text(
                            "No results for '$query'",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                  SizedBox(height: 16),
                  Row(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text("Anime:"),
                      _FilterButton("TV Series", "anime[tv_series]"),
                      _FilterButton("TV Special", "anime[tv_special]"),
                      _FilterButton("DVD Special", "anime[dvd_special]"),
                      _FilterButton("BD Special", "anime[bd_special]"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Opacity(opacity: 0, child: Text("Anime:")),
                      _FilterButton("Movie", "anime[movie]"),
                      _FilterButton("OVA", "anime[ova]"),
                      _FilterButton("ONA", "anime[ona]"),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text("Other:"),
                      _FilterButton("Manga", "printedtype[manga]"),
                      _FilterButton("Light Novel", "printedtype[light_novel]"),
                      _FilterButton("Artbook", "printedtype[artbook]"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    if (results.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(_activeQueryProvider) ?? ""),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => ref.read(_activeQueryProvider.notifier).state = null,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth > 800 ? 2 : 1,
              childAspectRatio: 7 / 4,
            ),
            itemCount: results.value!.length,
            itemBuilder: (context, index) {
              // if (index == 0) {
              //   return Padding(
              //     padding: const EdgeInsets.all(16),
              //     child: searchBar,
              //   );
              // }

              final result = results.value![index];

              final mostSeeders = result.torrents.reduce((a, b) {
                return a.seeders > b.seeders ? a : b;
              }).seeders;

              final torrent = result.torrents
                  .where(
                    (t) => t.seeders == mostSeeders,
                  )
                  .firstOrNull;

              return AnimeCard(
                onTap: () {
                  context.push("/animebytes/${result.id}");
                },
                imageTag: "animebytes-${result.id}",
                imageUrl: result.image,
                title: result.seriesName,
                subtitle: result.studioList.firstOrNull,
                actions: [
                  if (torrent != null)
                    IconButton(
                      icon: Icon(Icons.download_outlined),
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              AnimebytesTorrentDialog(torrent),
                        );
                      },
                    )
                ],
                body: _ResultChild(result),
              );
            },
          );
        },
      ),
    );
  }
}

class _FilterButton extends ConsumerWidget {
  final String label;
  final String param;

  const _FilterButton(this.label, this.param);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(_filtersProvider).contains(param);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: selected
          ? FilledButton(
              onPressed: () {
                ref
                    .read(_filtersProvider.notifier)
                    .update((state) => {...state}..remove(param));
              },
              child: Text(label),
            )
          : FilledButton.tonal(
              onPressed: () {
                ref
                    .read(_filtersProvider.notifier)
                    .update((state) => {...state}..add(param));
              },
              child: Text(label),
            ),
    );
  }
}

class _ResultChild extends StatelessWidget {
  final AnimebytesSearchResult result;

  const _ResultChild(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    final chipLabel = result.groupName == result.categoryName
        ? result.groupName
        : "${result.categoryName} - ${result.groupName}";

    final chipColor = _chipColors[chipLabel];

    return SizedBox(
      height: 156,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Chip(
                label: Text(chipLabel),
                backgroundColor: chipColor?.withOpacity(0.35),
              ),
              if (result.incomplete ?? false)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Chip(
                    label: Text("Incomplete"),
                  ),
                ),
              if (result.ongoing ?? false)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Chip(
                    label: Text("Ongoing"),
                  ),
                ),
              Spacer(),
              Opacity(
                opacity: 0.5,
                child: Text(
                  result.year ?? "",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(child: HtmlText(result.descriptionHtml ?? "")),
        ],
      ),
    );
  }
}
