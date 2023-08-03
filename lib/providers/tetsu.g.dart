// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tetsu.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tetsuAllAnimeHash() => r'53d9cee6fe93c29f985f02d9b8e90087d387fa0e';

/// See also [tetsuAllAnime].
@ProviderFor(tetsuAllAnime)
final tetsuAllAnimeProvider = FutureProvider<List<TetsuAnime>>.internal(
  tetsuAllAnime,
  name: r'tetsuAllAnimeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tetsuAllAnimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TetsuAllAnimeRef = FutureProviderRef<List<TetsuAnime>>;
String _$tetsuAnimeHash() => r'c7a7bd6088e02e03a3c0899cffc8c4fc8a219e05';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef TetsuAnimeRef = FutureProviderRef<TetsuAnime>;

/// See also [tetsuAnime].
@ProviderFor(tetsuAnime)
const tetsuAnimeProvider = TetsuAnimeFamily();

/// See also [tetsuAnime].
class TetsuAnimeFamily extends Family<AsyncValue<TetsuAnime>> {
  /// See also [tetsuAnime].
  const TetsuAnimeFamily();

  /// See also [tetsuAnime].
  TetsuAnimeProvider call(
    int aid,
  ) {
    return TetsuAnimeProvider(
      aid,
    );
  }

  @override
  TetsuAnimeProvider getProviderOverride(
    covariant TetsuAnimeProvider provider,
  ) {
    return call(
      provider.aid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tetsuAnimeProvider';
}

/// See also [tetsuAnime].
class TetsuAnimeProvider extends FutureProvider<TetsuAnime> {
  /// See also [tetsuAnime].
  TetsuAnimeProvider(
    this.aid,
  ) : super.internal(
          (ref) => tetsuAnime(
            ref,
            aid,
          ),
          from: tetsuAnimeProvider,
          name: r'tetsuAnimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tetsuAnimeHash,
          dependencies: TetsuAnimeFamily._dependencies,
          allTransitiveDependencies:
              TetsuAnimeFamily._allTransitiveDependencies,
        );

  final int aid;

  @override
  bool operator ==(Object other) {
    return other is TetsuAnimeProvider && other.aid == aid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, aid.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$tetsuEpisodesHash() => r'68969e8214c3d1ea0fa74d98f667af3f91c707aa';
typedef TetsuEpisodesRef = FutureProviderRef<List<TetsuEpisode>>;

/// See also [tetsuEpisodes].
@ProviderFor(tetsuEpisodes)
const tetsuEpisodesProvider = TetsuEpisodesFamily();

/// See also [tetsuEpisodes].
class TetsuEpisodesFamily extends Family<AsyncValue<List<TetsuEpisode>>> {
  /// See also [tetsuEpisodes].
  const TetsuEpisodesFamily();

  /// See also [tetsuEpisodes].
  TetsuEpisodesProvider call(
    int aid,
  ) {
    return TetsuEpisodesProvider(
      aid,
    );
  }

  @override
  TetsuEpisodesProvider getProviderOverride(
    covariant TetsuEpisodesProvider provider,
  ) {
    return call(
      provider.aid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tetsuEpisodesProvider';
}

/// See also [tetsuEpisodes].
class TetsuEpisodesProvider extends FutureProvider<List<TetsuEpisode>> {
  /// See also [tetsuEpisodes].
  TetsuEpisodesProvider(
    this.aid,
  ) : super.internal(
          (ref) => tetsuEpisodes(
            ref,
            aid,
          ),
          from: tetsuEpisodesProvider,
          name: r'tetsuEpisodesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tetsuEpisodesHash,
          dependencies: TetsuEpisodesFamily._dependencies,
          allTransitiveDependencies:
              TetsuEpisodesFamily._allTransitiveDependencies,
        );

  final int aid;

  @override
  bool operator ==(Object other) {
    return other is TetsuEpisodesProvider && other.aid == aid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, aid.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$tetsuFilesHash() => r'78d4c3b9fe6924d1e8ea735b507a2d3fe5d75ce6';
typedef TetsuFilesRef = FutureProviderRef<List<TetsuFile>>;

/// See also [tetsuFiles].
@ProviderFor(tetsuFiles)
const tetsuFilesProvider = TetsuFilesFamily();

/// See also [tetsuFiles].
class TetsuFilesFamily extends Family<AsyncValue<List<TetsuFile>>> {
  /// See also [tetsuFiles].
  const TetsuFilesFamily();

  /// See also [tetsuFiles].
  TetsuFilesProvider call(
    int aid,
  ) {
    return TetsuFilesProvider(
      aid,
    );
  }

  @override
  TetsuFilesProvider getProviderOverride(
    covariant TetsuFilesProvider provider,
  ) {
    return call(
      provider.aid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tetsuFilesProvider';
}

/// See also [tetsuFiles].
class TetsuFilesProvider extends FutureProvider<List<TetsuFile>> {
  /// See also [tetsuFiles].
  TetsuFilesProvider(
    this.aid,
  ) : super.internal(
          (ref) => tetsuFiles(
            ref,
            aid,
          ),
          from: tetsuFilesProvider,
          name: r'tetsuFilesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tetsuFilesHash,
          dependencies: TetsuFilesFamily._dependencies,
          allTransitiveDependencies:
              TetsuFilesFamily._allTransitiveDependencies,
        );

  final int aid;

  @override
  bool operator ==(Object other) {
    return other is TetsuFilesProvider && other.aid == aid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, aid.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
