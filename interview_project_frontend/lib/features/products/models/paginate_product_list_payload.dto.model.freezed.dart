// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_product_list_payload.dto.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginateProductListPayloadDTO _$PaginateProductListPayloadDTOFromJson(
    Map<String, dynamic> json) {
  return _PaginateProductListPayloadDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginateProductListPayloadDTO {
  num get page => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginateProductListPayloadDTOCopyWith<PaginateProductListPayloadDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateProductListPayloadDTOCopyWith<$Res> {
  factory $PaginateProductListPayloadDTOCopyWith(
          PaginateProductListPayloadDTO value,
          $Res Function(PaginateProductListPayloadDTO) then) =
      _$PaginateProductListPayloadDTOCopyWithImpl<$Res,
          PaginateProductListPayloadDTO>;
  @useResult
  $Res call({num page, num limit});
}

/// @nodoc
class _$PaginateProductListPayloadDTOCopyWithImpl<$Res,
        $Val extends PaginateProductListPayloadDTO>
    implements $PaginateProductListPayloadDTOCopyWith<$Res> {
  _$PaginateProductListPayloadDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginateProductListPayloadDTOCopyWith<$Res>
    implements $PaginateProductListPayloadDTOCopyWith<$Res> {
  factory _$$_PaginateProductListPayloadDTOCopyWith(
          _$_PaginateProductListPayloadDTO value,
          $Res Function(_$_PaginateProductListPayloadDTO) then) =
      __$$_PaginateProductListPayloadDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num page, num limit});
}

/// @nodoc
class __$$_PaginateProductListPayloadDTOCopyWithImpl<$Res>
    extends _$PaginateProductListPayloadDTOCopyWithImpl<$Res,
        _$_PaginateProductListPayloadDTO>
    implements _$$_PaginateProductListPayloadDTOCopyWith<$Res> {
  __$$_PaginateProductListPayloadDTOCopyWithImpl(
      _$_PaginateProductListPayloadDTO _value,
      $Res Function(_$_PaginateProductListPayloadDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_PaginateProductListPayloadDTO(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginateProductListPayloadDTO
    implements _PaginateProductListPayloadDTO {
  const _$_PaginateProductListPayloadDTO(
      {required this.page, required this.limit});

  factory _$_PaginateProductListPayloadDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_PaginateProductListPayloadDTOFromJson(json);

  @override
  final num page;
  @override
  final num limit;

  @override
  String toString() {
    return 'PaginateProductListPayloadDTO(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginateProductListPayloadDTO &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginateProductListPayloadDTOCopyWith<_$_PaginateProductListPayloadDTO>
      get copyWith => __$$_PaginateProductListPayloadDTOCopyWithImpl<
          _$_PaginateProductListPayloadDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginateProductListPayloadDTOToJson(
      this,
    );
  }
}

abstract class _PaginateProductListPayloadDTO
    implements PaginateProductListPayloadDTO {
  const factory _PaginateProductListPayloadDTO(
      {required final num page,
      required final num limit}) = _$_PaginateProductListPayloadDTO;

  factory _PaginateProductListPayloadDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginateProductListPayloadDTO.fromJson;

  @override
  num get page;
  @override
  num get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PaginateProductListPayloadDTOCopyWith<_$_PaginateProductListPayloadDTO>
      get copyWith => throw _privateConstructorUsedError;
}
