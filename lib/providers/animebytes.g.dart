// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animebytes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$abTorrentkeyHash() => r'024e2548baad605338d0d1034cd8fe0f5b854d27';

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
String _$abUsernameHash() => r'9d92b11b317a3dc5f59b67f1d0cf14f0dbe5a78c';

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
String _$abSearchResultsHash() => r'8eaf5ecf4d26a2142bd95d1da0184e97ba8a6463';

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

typedef AbSearchResultsRef = FutureProviderRef<List<AnimebytesSearchResult>>;

/// See also [abSearchResults].
@ProviderFor(abSearchResults)
const abSearchResultsProvider = AbSearchResultsFamily();

/// See also [abSearchResults].
class AbSearchResultsFamily
    extends Family<AsyncValue<List<AnimebytesSearchResult>>> {
  /// See also [abSearchResults].
  const AbSearchResultsFamily();

  /// See also [abSearchResults].
  AbSearchResultsProvider call(
    String query,
    Set<String> filters,
  ) {
    return AbSearchResultsProvider(
      query,
      filters,
    );
  }

  @override
  AbSearchResultsProvider getProviderOverride(
    covariant AbSearchResultsProvider provider,
  ) {
    return call(
      provider.query,
      provider.filters,
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
  String? get name => r'abSearchResultsProvider';
}

/// See also [abSearchResults].
class AbSearchResultsProvider
    extends FutureProvider<List<AnimebytesSearchResult>> {
  /// See also [abSearchResults].
  AbSearchResultsProvider(
    this.query,
    this.filters,
  ) : super.internal(
          (ref) => abSearchResults(
            ref,
            query,
            filters,
          ),
          from: abSearchResultsProvider,
          name: r'abSearchResultsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$abSearchResultsHash,
          dependencies: AbSearchResultsFamily._dependencies,
          allTransitiveDependencies:
              AbSearchResultsFamily._allTransitiveDependencies,
        );

  final String query;
  final Set<String> filters;

  @override
  bool operator ==(Object other) {
    return other is AbSearchResultsProvider &&
        other.query == query &&
        other.filters == filters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, filters.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$abGroupHash() => r'ed0f2c63a8f802829b7ed2241a2be469f76d0979';
typedef AbGroupRef = AutoDisposeFutureProviderRef<AnimebytesSearchResult>;

/// See also [abGroup].
@ProviderFor(abGroup)
const abGroupProvider = AbGroupFamily();

/// See also [abGroup].
class AbGroupFamily extends Family<AsyncValue<AnimebytesSearchResult>> {
  /// See also [abGroup].
  const AbGroupFamily();

  /// See also [abGroup].
  AbGroupProvider call(
    int groupId,
  ) {
    return AbGroupProvider(
      groupId,
    );
  }

  @override
  AbGroupProvider getProviderOverride(
    covariant AbGroupProvider provider,
  ) {
    return call(
      provider.groupId,
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
  String? get name => r'abGroupProvider';
}

/// See also [abGroup].
class AbGroupProvider
    extends AutoDisposeFutureProvider<AnimebytesSearchResult> {
  /// See also [abGroup].
  AbGroupProvider(
    this.groupId,
  ) : super.internal(
          (ref) => abGroup(
            ref,
            groupId,
          ),
          from: abGroupProvider,
          name: r'abGroupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$abGroupHash,
          dependencies: AbGroupFamily._dependencies,
          allTransitiveDependencies: AbGroupFamily._allTransitiveDependencies,
        );

  final int groupId;

  @override
  bool operator ==(Object other) {
    return other is AbGroupProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
