// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrents.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$torrentsHash() => r'93db38bc14631032b11b17d6afa0f00eeb738827';

/// See also [torrents].
@ProviderFor(torrents)
final torrentsProvider = StreamProvider<List<Torrent>>.internal(
  torrents,
  name: r'torrentsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$torrentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TorrentsRef = StreamProviderRef<List<Torrent>>;
String _$animebytesTorrentIdsHash() =>
    r'f3c095121b750b3e704d7e757c6d96a494bd32ce';

/// See also [animebytesTorrentIds].
@ProviderFor(animebytesTorrentIds)
final animebytesTorrentIdsProvider = AutoDisposeProvider<Set<int>>.internal(
  animebytesTorrentIds,
  name: r'animebytesTorrentIdsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$animebytesTorrentIdsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AnimebytesTorrentIdsRef = AutoDisposeProviderRef<Set<int>>;
String _$freeSpaceHash() => r'e1603e520ea58844045351e63668193fedef43f8';

/// See also [freeSpace].
@ProviderFor(freeSpace)
final freeSpaceProvider = FutureProvider<int>.internal(
  freeSpace,
  name: r'freeSpaceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$freeSpaceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FreeSpaceRef = FutureProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
