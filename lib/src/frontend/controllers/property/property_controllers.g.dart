// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertiesNotifierHash() =>
    r'a702cf93fae8c99b3b44d9212174bfeec8cc20bf';

/// See also [PropertiesNotifier].
@ProviderFor(PropertiesNotifier)
final propertiesNotifierProvider = AutoDisposeAsyncNotifierProvider<
    PropertiesNotifier, List<Property>>.internal(
  PropertiesNotifier.new,
  name: r'propertiesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertiesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertiesNotifier = AutoDisposeAsyncNotifier<List<Property>>;
String _$propertyNotifierHash() => r'8f8b7661c28da936a18f56ff6b93193db6d853f3';

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

abstract class _$PropertyNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Property> {
  late final String propertyID;

  FutureOr<Property> build(
    String propertyID,
  );
}

/// See also [PropertyNotifier].
@ProviderFor(PropertyNotifier)
const propertyNotifierProvider = PropertyNotifierFamily();

/// See also [PropertyNotifier].
class PropertyNotifierFamily extends Family<AsyncValue<Property>> {
  /// See also [PropertyNotifier].
  const PropertyNotifierFamily();

  /// See also [PropertyNotifier].
  PropertyNotifierProvider call(
    String propertyID,
  ) {
    return PropertyNotifierProvider(
      propertyID,
    );
  }

  @override
  PropertyNotifierProvider getProviderOverride(
    covariant PropertyNotifierProvider provider,
  ) {
    return call(
      provider.propertyID,
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
  String? get name => r'propertyNotifierProvider';
}

/// See also [PropertyNotifier].
class PropertyNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PropertyNotifier, Property> {
  /// See also [PropertyNotifier].
  PropertyNotifierProvider(
    String propertyID,
  ) : this._internal(
          () => PropertyNotifier()..propertyID = propertyID,
          from: propertyNotifierProvider,
          name: r'propertyNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$propertyNotifierHash,
          dependencies: PropertyNotifierFamily._dependencies,
          allTransitiveDependencies:
              PropertyNotifierFamily._allTransitiveDependencies,
          propertyID: propertyID,
        );

  PropertyNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.propertyID,
  }) : super.internal();

  final String propertyID;

  @override
  FutureOr<Property> runNotifierBuild(
    covariant PropertyNotifier notifier,
  ) {
    return notifier.build(
      propertyID,
    );
  }

  @override
  Override overrideWith(PropertyNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PropertyNotifierProvider._internal(
        () => create()..propertyID = propertyID,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        propertyID: propertyID,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PropertyNotifier, Property>
      createElement() {
    return _PropertyNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PropertyNotifierProvider && other.propertyID == propertyID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, propertyID.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PropertyNotifierRef on AutoDisposeAsyncNotifierProviderRef<Property> {
  /// The parameter `propertyID` of this provider.
  String get propertyID;
}

class _PropertyNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PropertyNotifier, Property>
    with PropertyNotifierRef {
  _PropertyNotifierProviderElement(super.provider);

  @override
  String get propertyID => (origin as PropertyNotifierProvider).propertyID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
