// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiClientHash() => r'336129cdc5ce91bdcdb23a408a0c9860b6758355';

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

typedef ApiClientRef = AutoDisposeProviderRef<ApiClient>;

/// See also [apiClient].
@ProviderFor(apiClient)
const apiClientProvider = ApiClientFamily();

/// See also [apiClient].
class ApiClientFamily extends Family<ApiClient> {
  /// See also [apiClient].
  const ApiClientFamily();

  /// See also [apiClient].
  ApiClientProvider call({
    void Function(DioException, ErrorInterceptorHandler)? onError,
  }) {
    return ApiClientProvider(
      onError: onError,
    );
  }

  @override
  ApiClientProvider getProviderOverride(
    covariant ApiClientProvider provider,
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
  String? get name => r'apiClientProvider';
}

/// See also [apiClient].
class ApiClientProvider extends AutoDisposeProvider<ApiClient> {
  /// See also [apiClient].
  ApiClientProvider({
    this.onError,
  }) : super.internal(
          (ref) => apiClient(
            ref,
            onError: onError,
          ),
          from: apiClientProvider,
          name: r'apiClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$apiClientHash,
          dependencies: ApiClientFamily._dependencies,
          allTransitiveDependencies: ApiClientFamily._allTransitiveDependencies,
        );

  final void Function(DioException, ErrorInterceptorHandler)? onError;

  @override
  bool operator ==(Object other) {
    return other is ApiClientProvider && other.onError == onError;
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
