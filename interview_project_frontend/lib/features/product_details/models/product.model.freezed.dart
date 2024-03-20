// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
// ignore: invalid_annotation_target
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get leftInStock => throw _privateConstructorUsedError;
  num get userSatisfaction => throw _privateConstructorUsedError;
  String get displayImagePath => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get connectedImagePaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      num price,
      num leftInStock,
      num userSatisfaction,
      String displayImagePath,
      String description,
      List<String> connectedImagePaths});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? leftInStock = null,
    Object? userSatisfaction = null,
    Object? displayImagePath = null,
    Object? description = null,
    Object? connectedImagePaths = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      leftInStock: null == leftInStock
          ? _value.leftInStock
          : leftInStock // ignore: cast_nullable_to_non_nullable
              as num,
      userSatisfaction: null == userSatisfaction
          ? _value.userSatisfaction
          : userSatisfaction // ignore: cast_nullable_to_non_nullable
              as num,
      displayImagePath: null == displayImagePath
          ? _value.displayImagePath
          : displayImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      connectedImagePaths: null == connectedImagePaths
          ? _value.connectedImagePaths
          : connectedImagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      num price,
      num leftInStock,
      num userSatisfaction,
      String displayImagePath,
      String description,
      List<String> connectedImagePaths});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? leftInStock = null,
    Object? userSatisfaction = null,
    Object? displayImagePath = null,
    Object? description = null,
    Object? connectedImagePaths = null,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      leftInStock: null == leftInStock
          ? _value.leftInStock
          : leftInStock // ignore: cast_nullable_to_non_nullable
              as num,
      userSatisfaction: null == userSatisfaction
          ? _value.userSatisfaction
          : userSatisfaction // ignore: cast_nullable_to_non_nullable
              as num,
      displayImagePath: null == displayImagePath
          ? _value.displayImagePath
          : displayImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      connectedImagePaths: null == connectedImagePaths
          ? _value._connectedImagePaths
          : connectedImagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.price,
      required this.leftInStock,
      required this.userSatisfaction,
      required this.displayImagePath,
      required this.description,
      required final List<String> connectedImagePaths})
      : _connectedImagePaths = connectedImagePaths;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String name;
  @override
  final num price;
  @override
  final num leftInStock;
  @override
  final num userSatisfaction;
  @override
  final String displayImagePath;
  @override
  final String description;
  final List<String> _connectedImagePaths;
  @override
  List<String> get connectedImagePaths {
    if (_connectedImagePaths is EqualUnmodifiableListView)
      return _connectedImagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connectedImagePaths);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, leftInStock: $leftInStock, userSatisfaction: $userSatisfaction, displayImagePath: $displayImagePath, description: $description, connectedImagePaths: $connectedImagePaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.leftInStock, leftInStock) ||
                other.leftInStock == leftInStock) &&
            (identical(other.userSatisfaction, userSatisfaction) ||
                other.userSatisfaction == userSatisfaction) &&
            (identical(other.displayImagePath, displayImagePath) ||
                other.displayImagePath == displayImagePath) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._connectedImagePaths, _connectedImagePaths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      leftInStock,
      userSatisfaction,
      displayImagePath,
      description,
      const DeepCollectionEquality().hash(_connectedImagePaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final num price,
      required final num leftInStock,
      required final num userSatisfaction,
      required final String displayImagePath,
      required final String description,
      required final List<String> connectedImagePaths}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "_id")
  String get id;
  @override
  String get name;
  @override
  num get price;
  @override
  num get leftInStock;
  @override
  num get userSatisfaction;
  @override
  String get displayImagePath;
  @override
  String get description;
  @override
  List<String> get connectedImagePaths;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
