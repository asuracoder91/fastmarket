// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cart _$CartFromJson(Map<String, dynamic> json) => _Cart(
  quantity: (json['quantity'] as num).toInt(),
  product: ProductInfo.fromJson(json['product'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CartToJson(_Cart instance) => <String, dynamic>{
  'quantity': instance.quantity,
  'product': instance.product,
};
