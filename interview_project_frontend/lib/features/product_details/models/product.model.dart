import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") required String id,
    required String name,
    required num price,
    required num leftInStock,
    required num userSatisfaction,
    required String displayImagePath,
    required String description,
    required List<String> connectedImagePaths,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
