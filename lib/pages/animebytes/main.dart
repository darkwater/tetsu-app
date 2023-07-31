import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/providers/animebytes.dart';
import 'package:tetsu_app/widgets/image.dart';

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
              },
            ),
        ],
      ),
    );

    if (results.hasError) {
      print(results.error);
      print(results.stackTrace);
    }

    if (results.hasValue && results.value!.isEmpty) {
      return Center(
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
      );
    }

    return Stack(
      children: [
        if (results.hasValue)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              bottom: false,
              left: false,
              right: false,
              child: ListView.builder(
                // padding: const EdgeInsets.only(top: 48),
                itemCount: results.value!.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: searchBar,
                    );
                  }

                  final result = results.value![index - 1];
                  return _ResultTile(
                    result,
                    key: ValueKey(result.id),
                  );
                },
              ),
            ),
          ),
        // else
        // Positioned(
        //   top: 0,
        //   left: 0,
        //   right: 0,
        //   child: searchBar,
        // ),
      ],
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

class _ResultTile extends StatelessWidget {
  final AnimebytesSearchResult result;

  const _ResultTile(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    final chipLabel = result.groupName == result.categoryName
        ? result.groupName
        : "${result.categoryName} - ${result.groupName}";

    final chipColor = _chipColors[chipLabel];

    return InkWell(
      onTap: () {
        context.push("/animebytes/${result.id}");
      },
      child: SizedBox(
        height: 156,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 100,
                child: result.image != null
                    ? ZoomableNetworkImage(
                        tag: "ab-image-${result.id}",
                        url: result.image!,
                      )
                    : null,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          result.seriesName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(width: 16),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            result.year ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
