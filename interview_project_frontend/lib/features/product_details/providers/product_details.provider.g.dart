// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailsHash() => r'e0a0816e823a1a7d9e105c4c13fa88d548b07691';

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

typedef ProductDetailsRef = AutoDisposeFutureProviderRef<Product>;

/// See also [productDetails].
@ProviderFor(productDetails)
const productDetailsProvider = ProductDetailsFamily();

/// See also [productDetails].
class ProductDetailsFamily extends Family<AsyncValue<Product>> {
  /// See also [productDetails].
  const ProductDetailsFamily();

  /// See also [productDetails].
  ProductDetailsProvider call({
    required String productId,
  }) {
    return ProductDetailsProvider(
      productId: productId,
    );
  }

  @override
  ProductDetailsProvider getProviderOverride(
    covariant ProductDetailsProvider provider,
  ) {
    return call(
      productId: provider.productId,
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
  String? get name => r'productDetailsProvider';
}

/// See also [productDetails].
class ProductDetailsProvider extends AutoDisposeFutureProvider<Product> {
  /// See also [productDetails].
  ProductDetailsProvider({
    required this.productId,
  }) : super.internal(
          (ref) => productDetails(
            ref,
            productId: productId,
          ),
          from: productDetailsProvider,
          name: r'productDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productDetailsHash,
          dependencies: ProductDetailsFamily._dependencies,
          allTransitiveDependencies:
              ProductDetailsFamily._allTransitiveDependencies,
        );

  final String productId;

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
