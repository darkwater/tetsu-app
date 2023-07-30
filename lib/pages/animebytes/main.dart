import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tetsu_app/apis/animebytes/search_result.dart';
import 'package:tetsu_app/providers/animebytes.dart';

import '../scaffold.dart';

final _queryInputProvider = StateProvider<String>((ref) => "");
final _queryControllerProvider = Provider((ref) => TextEditingController());

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

    final query = ref.watch(abSearchQueryProvider);
    final results = ref.watch(abSearchResultsProvider);

    final searchBar = Hero(
      tag: "searchBar",
      child: SafeArea(
        bottom: false,
        child: SearchBar(
          controller: ref.watch(_queryControllerProvider),
          hintText: "Search anime",
          onChanged: (value) =>
              ref.read(_queryInputProvider.notifier).state = value,
          leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
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
                  ref.read(abSearchQueryProvider.notifier).state =
                      ref.read(_queryInputProvider);
                },
              ),
          ],
        ),
      ),
    );

    if (results.hasError) print(results.stackTrace);

    if (results.hasValue && results.value!.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              searchBar,
              if (results.isLoading)
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: 200,
                    child: const LinearProgressIndicator(),
                  ),
                )
              else if (results.hasError)
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
            ],
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
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: 100,
                  child: result.image != null
                      ? CachedNetworkImage(
                          imageUrl: result.image!,
                          placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        )
                      : null,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      result.seriesName,
                      style: Theme.of(context).textTheme.titleMedium,
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

class TestPage extends ConsumerWidget {
  const TestPage({super.key});

  static Route route() => MaterialPageRoute(builder: (_) => const TestPage());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    return AdaptiveNavigationScaffold(
      appBar: AppBar(
        title: Text(pages[selectedIndex].label),
      ),
      // appBarBreakpoint: Breakpoints.smallAndUp,
      // internalAnimations: false,
      destinations: pages
          .asMap()
          .entries
          .map((entry) => entry.value.destination(selectedIndex == entry.key))
          .toList(),
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) =>
          ref.read(selectedIndexProvider.notifier).state = index,
      body: pages[selectedIndex].main(context),
      // smallBody: _pages[selectedIndex].small ?? _pages[selectedIndex].main,
    );
  }
}
