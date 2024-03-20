// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiHash() => r'0b1216fcbad68e79f4ced963c83202188bd40739';

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

typedef ApiRef = AutoDisposeProviderRef<Api>;

/// See also [api].
@ProviderFor(api)
const apiProvider = ApiFamily();

/// See also [api].
class ApiFamily extends Family<Api> {
  /// See also [api].
  const ApiFamily();

  /// See also [api].
  ApiProvider call({
    void Function(DioException, ErrorInterceptorHandler)? onError,
  }) {
    return ApiProvider(
      onError: onError,
    );
  }

  @override
  ApiProvider getProviderOverride(
    covariant ApiProvider provider,
  ) {
    return call(
      onError: provider.onError,
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
  String? get name => r'apiProvider';
}

/// See also [api].
class ApiProvider extends AutoDisposeProvider<Api> {
  /// See also [api].
  ApiProvider({
    this.onError,
  }) : super.internal(
          (ref) => api(
            ref,
            onError: onError,
          ),
          from: apiProvider,
          name: r'apiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$apiHash,
          dependencies: ApiFamily._dependencies,
          allTransitiveDependencies: ApiFamily._allTransitiveDependencies,
        );

  final void Function(DioException, ErrorInterceptorHandler)? onError;

  @override
  bool operator ==(Object other) {
    return other is ApiProvider && other.onError == onError;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, onError.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
