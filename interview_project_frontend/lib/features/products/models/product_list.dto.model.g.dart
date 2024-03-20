// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dto.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListDTO _$$_ProductListDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductListDTO(
      id: json['_id'] as String,
      name: json['name'] as String,
      price: json['price'] as num,
      leftInStock: json['leftInStock'] as num,
      userSatisfaction: json['userSatisfaction'] as num,
      displayImagePath: json['displayImagePath'] as String,
    );

Map<String, dynamic> _$$_ProductListDTOToJson(_$_ProductListDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'leftInStock': instance.leftInStock,
      'userSatisfaction': instance.userSatisfaction,
      'displayImagePath': instance.displayImagePath,
    };
