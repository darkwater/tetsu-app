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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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
    String query,
    Set<String> filters,
  ) : this._internal(
          (ref) => abSearchResults(
            ref as AbSearchResultsRef,
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
          query: query,
          filters: filters,
        );

  AbSearchResultsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.filters,
  }) : super.internal();

  final String query;
  final Set<String> filters;

  @override
  Override overrideWith(
    FutureOr<List<AnimebytesSearchResult>> Function(AbSearchResultsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AbSearchResultsProvider._internal(
        (ref) => create(ref as AbSearchResultsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        filters: filters,
      ),
    );
  }

  @override
  FutureProviderElement<List<AnimebytesSearchResult>> createElement() {
    return _AbSearchResultsProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AbSearchResultsRef on FutureProviderRef<List<AnimebytesSearchResult>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `filters` of this provider.
  Set<String> get filters;
}

class _AbSearchResultsProviderElement
    extends FutureProviderElement<List<AnimebytesSearchResult>>
    with AbSearchResultsRef {
  _AbSearchResultsProviderElement(super.provider);

  @override
  String get query => (origin as AbSearchResultsProvider).query;
  @override
  Set<String> get filters => (origin as AbSearchResultsProvider).filters;
}

String _$abGroupHash() => r'ed0f2c63a8f802829b7ed2241a2be469f76d0979';

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
    int groupId,
  ) : this._internal(
          (ref) => abGroup(
            ref as AbGroupRef,
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
          groupId: groupId,
        );

  AbGroupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final int groupId;

  @override
  Override overrideWith(
    FutureOr<AnimebytesSearchResult> Function(AbGroupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AbGroupProvider._internal(
        (ref) => create(ref as AbGroupRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AnimebytesSearchResult> createElement() {
    return _AbGroupProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AbGroupRef on AutoDisposeFutureProviderRef<AnimebytesSearchResult> {
  /// The parameter `groupId` of this provider.
  int get groupId;
}

class _AbGroupProviderElement
    extends AutoDisposeFutureProviderElement<AnimebytesSearchResult>
    with AbGroupRef {
  _AbGroupProviderElement(super.provider);

  @override
  int get groupId => (origin as AbGroupProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
