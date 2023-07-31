// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'torrents.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$torrentsHash() => r'10c1c039dcb2fdbe1d2008f430138e8f4d079497';

/// See also [torrents].
@ProviderFor(torrents)
final torrentsProvider = AutoDisposeStreamProvider<List<Torrent>>.internal(
  torrents,
  name: r'torrentsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$torrentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TorrentsRef = AutoDisposeStreamProviderRef<List<Torrent>>;
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
String _$freeSpaceHash() => r'4184aefcde4357439b5b34be404309f713613c68';

/// See also [freeSpace].
@ProviderFor(freeSpace)
final freeSpaceProvider = AutoDisposeFutureProvider<int>.internal(
  freeSpace,
  name: r'freeSpaceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$freeSpaceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FreeSpaceRef = AutoDisposeFutureProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
