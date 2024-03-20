// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['_id'] as String,
      name: json['name'] as String,
      price: json['price'] as num,
      leftInStock: json['leftInStock'] as num,
      userSatisfaction: json['userSatisfaction'] as num,
      displayImagePath: json['displayImagePath'] as String,
      description: json['description'] as String,
      connectedImagePaths: (json['connectedImagePaths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'leftInStock': instance.leftInStock,
      'userSatisfaction': instance.userSatisfaction,
      'displayImagePath': instance.displayImagePath,
      'description': instance.description,
      'connectedImagePaths': instance.connectedImagePaths,
    };
