import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginate_product_list_payload.dto.model.freezed.dart';
part 'paginate_product_list_payload.dto.model.g.dart';

@freezed
class PaginateProductListPayloadDTO with _$PaginateProductListPayloadDTO {
  const factory PaginateProductListPayloadDTO({
    required num page,
    required num limit,
  }) = _PaginateProductListPayloadDTO;

  factory PaginateProductListPayloadDTO.fromJson(Map<String, dynamic> json) => _$PaginateProductListPayloadDTOFromJson(json);
}
