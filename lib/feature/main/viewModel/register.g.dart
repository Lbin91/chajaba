// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registerViewModelHash() => r'153ad7118189805ecb73025b3f7c02b8f104f422';

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

abstract class _$RegisterViewModel
    extends BuildlessAutoDisposeAsyncNotifier<RegisterState> {
  late final int parkingLocationId;

  FutureOr<RegisterState> build(
    int parkingLocationId,
  );
}

/// See also [RegisterViewModel].
@ProviderFor(RegisterViewModel)
const registerViewModelProvider = RegisterViewModelFamily();

/// See also [RegisterViewModel].
class RegisterViewModelFamily extends Family<AsyncValue<RegisterState>> {
  /// See also [RegisterViewModel].
  const RegisterViewModelFamily();

  /// See also [RegisterViewModel].
  RegisterViewModelProvider call(
    int parkingLocationId,
  ) {
    return RegisterViewModelProvider(
      parkingLocationId,
    );
  }

  @override
  RegisterViewModelProvider getProviderOverride(
    covariant RegisterViewModelProvider provider,
  ) {
    return call(
      provider.parkingLocationId,
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
  String? get name => r'registerViewModelProvider';
}

/// See also [RegisterViewModel].
class RegisterViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RegisterViewModel, RegisterState> {
  /// See also [RegisterViewModel].
  RegisterViewModelProvider(
    int parkingLocationId,
  ) : this._internal(
          () => RegisterViewModel()..parkingLocationId = parkingLocationId,
          from: registerViewModelProvider,
          name: r'registerViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$registerViewModelHash,
          dependencies: RegisterViewModelFamily._dependencies,
          allTransitiveDependencies:
              RegisterViewModelFamily._allTransitiveDependencies,
          parkingLocationId: parkingLocationId,
        );

  RegisterViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.parkingLocationId,
  }) : super.internal();

  final int parkingLocationId;

  @override
  FutureOr<RegisterState> runNotifierBuild(
    covariant RegisterViewModel notifier,
  ) {
    return notifier.build(
      parkingLocationId,
    );
  }

  @override
  Override overrideWith(RegisterViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: RegisterViewModelProvider._internal(
        () => create()..parkingLocationId = parkingLocationId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        parkingLocationId: parkingLocationId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RegisterViewModel, RegisterState>
      createElement() {
    return _RegisterViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RegisterViewModelProvider &&
        other.parkingLocationId == parkingLocationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parkingLocationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RegisterViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<RegisterState> {
  /// The parameter `parkingLocationId` of this provider.
  int get parkingLocationId;
}

class _RegisterViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RegisterViewModel,
        RegisterState> with RegisterViewModelRef {
  _RegisterViewModelProviderElement(super.provider);

  @override
  int get parkingLocationId =>
      (origin as RegisterViewModelProvider).parkingLocationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
