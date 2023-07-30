// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animebytes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$abTorrentkeyHash() => r'861103bec421ab714c122258b621a26dc14c5b6b';

/// See also [abTorrentkey].
@ProviderFor(abTorrentkey)
final abTorrentkeyProvider = StreamProvider<String>.internal(
  abTorrentkey,
  name: r'abTorrentkeyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$abTorrentkeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AbTorrentkeyRef = StreamProviderRef<String>;
String _$abUsernameHash() => r'db8bdbd771fb230b597e4b84ad3700f10684570b';

/// See also [abUsername].
@ProviderFor(abUsername)
final abUsernameProvider = StreamProvider<String>.internal(
  abUsername,
  name: r'abUsernameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$abUsernameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AbUsernameRef = StreamProviderRef<String>;
String _$abClientHash() => r'1a37e2c1b4c4c59bad498600571b5ef838354f78';

/// See also [abClient].
@ProviderFor(abClient)
final abClientProvider = AutoDisposeProvider<AnimebytesClient>.internal(
  abClient,
  name: r'abClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$abClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AbClientRef = AutoDisposeProviderRef<AnimebytesClient>;
String _$abSearchResultsHash() => r'738f923eca9c16d455f92e4fd79196521c53819a';

/// See also [abSearchResults].
@ProviderFor(abSearchResults)
final abSearchResultsProvider =
    FutureProvider<List<AnimebytesSearchResult>>.internal(
  abSearchResults,
  name: r'abSearchResultsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$abSearchResultsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AbSearchResultsRef = FutureProviderRef<List<AnimebytesSearchResult>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
