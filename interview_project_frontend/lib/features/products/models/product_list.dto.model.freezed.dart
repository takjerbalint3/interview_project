// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list.dto.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListDTO _$ProductListDTOFromJson(Map<String, dynamic> json) {
  return _ProductListDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductListDTO {
// ignore: invalid_annotation_target
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get leftInStock => throw _privateConstructorUsedError;
  num get userSatisfaction => throw _privateConstructorUsedError;
  String get displayImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListDTOCopyWith<ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListDTOCopyWith<$Res> {
  factory $ProductListDTOCopyWith(
          ProductListDTO value, $Res Function(ProductListDTO) then) =
      _$ProductListDTOCopyWithImpl<$Res, ProductListDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      num price,
      num leftInStock,
      num userSatisfaction,
      String displayImagePath});
}

/// @nodoc
class _$ProductListDTOCopyWithImpl<$Res, $Val extends ProductListDTO>
    implements $ProductListDTOCopyWith<$Res> {
  _$ProductListDTOCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListDTOCopyWith<$Res>
    implements $ProductListDTOCopyWith<$Res> {
  factory _$$_ProductListDTOCopyWith(
          _$_ProductListDTO value, $Res Function(_$_ProductListDTO) then) =
      __$$_ProductListDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      String name,
      num price,
      num leftInStock,
      num userSatisfaction,
      String displayImagePath});
}

/// @nodoc
class __$$_ProductListDTOCopyWithImpl<$Res>
    extends _$ProductListDTOCopyWithImpl<$Res, _$_ProductListDTO>
    implements _$$_ProductListDTOCopyWith<$Res> {
  __$$_ProductListDTOCopyWithImpl(
      _$_ProductListDTO _value, $Res Function(_$_ProductListDTO) _then)
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
  }) {
    return _then(_$_ProductListDTO(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListDTO implements _ProductListDTO {
  const _$_ProductListDTO(
      {@JsonKey(name: "_id") required this.id,
      required this.name,
      required this.price,
      required this.leftInStock,
      required this.userSatisfaction,
      required this.displayImagePath});

  factory _$_ProductListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListDTOFromJson(json);

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
  String toString() {
    return 'ProductListDTO(id: $id, name: $name, price: $price, leftInStock: $leftInStock, userSatisfaction: $userSatisfaction, displayImagePath: $displayImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.leftInStock, leftInStock) ||
                other.leftInStock == leftInStock) &&
            (identical(other.userSatisfaction, userSatisfaction) ||
                other.userSatisfaction == userSatisfaction) &&
            (identical(other.displayImagePath, displayImagePath) ||
                other.displayImagePath == displayImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, leftInStock,
      userSatisfaction, displayImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      __$$_ProductListDTOCopyWithImpl<_$_ProductListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListDTOToJson(
      this,
    );
  }
}

abstract class _ProductListDTO implements ProductListDTO {
  const factory _ProductListDTO(
      {@JsonKey(name: "_id") required final String id,
      required final String name,
      required final num price,
      required final num leftInStock,
      required final num userSatisfaction,
      required final String displayImagePath}) = _$_ProductListDTO;

  factory _ProductListDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductListDTO.fromJson;

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
  @JsonKey(ignore: true)
  _$$_ProductListDTOCopyWith<_$_ProductListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
