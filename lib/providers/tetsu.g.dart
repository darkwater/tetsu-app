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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TetsuAllAnimeRef = FutureProviderRef<List<TetsuAnime>>;
String _$tetsuAnimeHash() => r'5434ef688459e6602b100e5a303a072b8a03d224';

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
    int aid,
  ) : this._internal(
          (ref) => tetsuAnime(
            ref as TetsuAnimeRef,
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
          aid: aid,
        );

  TetsuAnimeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.aid,
  }) : super.internal();

  final int aid;

  @override
  Override overrideWith(
    FutureOr<TetsuAnime> Function(TetsuAnimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TetsuAnimeProvider._internal(
        (ref) => create(ref as TetsuAnimeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        aid: aid,
      ),
    );
  }

  @override
  FutureProviderElement<TetsuAnime> createElement() {
    return _TetsuAnimeProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TetsuAnimeRef on FutureProviderRef<TetsuAnime> {
  /// The parameter `aid` of this provider.
  int get aid;
}

class _TetsuAnimeProviderElement extends FutureProviderElement<TetsuAnime>
    with TetsuAnimeRef {
  _TetsuAnimeProviderElement(super.provider);

  @override
  int get aid => (origin as TetsuAnimeProvider).aid;
}

String _$tetsuEpisodesHash() => r'68969e8214c3d1ea0fa74d98f667af3f91c707aa';

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
    int aid,
  ) : this._internal(
          (ref) => tetsuEpisodes(
            ref as TetsuEpisodesRef,
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
          aid: aid,
        );

  TetsuEpisodesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.aid,
  }) : super.internal();

  final int aid;

  @override
  Override overrideWith(
    FutureOr<List<TetsuEpisode>> Function(TetsuEpisodesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TetsuEpisodesProvider._internal(
        (ref) => create(ref as TetsuEpisodesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        aid: aid,
      ),
    );
  }

  @override
  FutureProviderElement<List<TetsuEpisode>> createElement() {
    return _TetsuEpisodesProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TetsuEpisodesRef on FutureProviderRef<List<TetsuEpisode>> {
  /// The parameter `aid` of this provider.
  int get aid;
}

class _TetsuEpisodesProviderElement
    extends FutureProviderElement<List<TetsuEpisode>> with TetsuEpisodesRef {
  _TetsuEpisodesProviderElement(super.provider);

  @override
  int get aid => (origin as TetsuEpisodesProvider).aid;
}

String _$tetsuFilesHash() => r'78d4c3b9fe6924d1e8ea735b507a2d3fe5d75ce6';

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
    int aid,
  ) : this._internal(
          (ref) => tetsuFiles(
            ref as TetsuFilesRef,
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
          aid: aid,
        );

  TetsuFilesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.aid,
  }) : super.internal();

  final int aid;

  @override
  Override overrideWith(
    FutureOr<List<TetsuFile>> Function(TetsuFilesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TetsuFilesProvider._internal(
        (ref) => create(ref as TetsuFilesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        aid: aid,
      ),
    );
  }

  @override
  FutureProviderElement<List<TetsuFile>> createElement() {
    return _TetsuFilesProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TetsuFilesRef on FutureProviderRef<List<TetsuFile>> {
  /// The parameter `aid` of this provider.
  int get aid;
}

class _TetsuFilesProviderElement extends FutureProviderElement<List<TetsuFile>>
    with TetsuFilesRef {
  _TetsuFilesProviderElement(super.provider);

  @override
  int get aid => (origin as TetsuFilesProvider).aid;
}

String _$tetsuSettingsHash() => r'bc689166a5e56d1ae94b7b340d71c02169ad949d';

/// See also [tetsuSettings].
@ProviderFor(tetsuSettings)
final tetsuSettingsProvider = FutureProvider<Map<String, dynamic>>.internal(
  tetsuSettings,
  name: r'tetsuSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tetsuSettingsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TetsuSettingsRef = FutureProviderRef<Map<String, dynamic>>;
String _$tetsuSettingValueHash() => r'63107f0d01f9a008c0ce1ad8f5e0a35f24f6ef7e';

/// See also [tetsuSettingValue].
@ProviderFor(tetsuSettingValue)
const tetsuSettingValueProvider = TetsuSettingValueFamily();

/// See also [tetsuSettingValue].
class TetsuSettingValueFamily extends Family<AsyncValue<dynamic>> {
  /// See also [tetsuSettingValue].
  const TetsuSettingValueFamily();

  /// See also [tetsuSettingValue].
  TetsuSettingValueProvider call(
    String key,
  ) {
    return TetsuSettingValueProvider(
      key,
    );
  }

  @override
  TetsuSettingValueProvider getProviderOverride(
    covariant TetsuSettingValueProvider provider,
  ) {
    return call(
      provider.key,
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
  String? get name => r'tetsuSettingValueProvider';
}

/// See also [tetsuSettingValue].
class TetsuSettingValueProvider extends FutureProvider<dynamic> {
  /// See also [tetsuSettingValue].
  TetsuSettingValueProvider(
    String key,
  ) : this._internal(
          (ref) => tetsuSettingValue(
            ref as TetsuSettingValueRef,
            key,
          ),
          from: tetsuSettingValueProvider,
          name: r'tetsuSettingValueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tetsuSettingValueHash,
          dependencies: TetsuSettingValueFamily._dependencies,
          allTransitiveDependencies:
              TetsuSettingValueFamily._allTransitiveDependencies,
          key: key,
        );

  TetsuSettingValueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Override overrideWith(
    FutureOr<dynamic> Function(TetsuSettingValueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TetsuSettingValueProvider._internal(
        (ref) => create(ref as TetsuSettingValueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  FutureProviderElement<dynamic> createElement() {
    return _TetsuSettingValueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TetsuSettingValueProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TetsuSettingValueRef on FutureProviderRef<dynamic> {
  /// The parameter `key` of this provider.
  String get key;
}

class _TetsuSettingValueProviderElement extends FutureProviderElement<dynamic>
    with TetsuSettingValueRef {
  _TetsuSettingValueProviderElement(super.provider);

  @override
  String get key => (origin as TetsuSettingValueProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
