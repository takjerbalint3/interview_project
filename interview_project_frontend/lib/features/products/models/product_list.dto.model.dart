import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.dto.model.freezed.dart';
part 'product_list.dto.model.g.dart';

@freezed
class ProductListDTO with _$ProductListDTO {
  const factory ProductListDTO({
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") required String id,
    required String name,
    required num price,
    required num leftInStock,
    required num userSatisfaction,
    required String displayImagePath,
  }) = _ProductListDTO;

  factory ProductListDTO.fromJson(Map<String, dynamic> json) => _$ProductListDTOFromJson(json);
}
