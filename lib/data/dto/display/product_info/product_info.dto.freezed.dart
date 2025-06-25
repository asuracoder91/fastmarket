// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductInfoDto implements DiagnosticableTreeMixin {

 String? get productId; String? get title; String? get subtitle; String? get imageUrl; int? get price; int? get originalPrice; int? get discrountRate; int? get reviewCount;
/// Create a copy of ProductInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductInfoDtoCopyWith<ProductInfoDto> get copyWith => _$ProductInfoDtoCopyWithImpl<ProductInfoDto>(this as ProductInfoDto, _$identity);

  /// Serializes this ProductInfoDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductInfoDto'))
    ..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('originalPrice', originalPrice))..add(DiagnosticsProperty('discrountRate', discrountRate))..add(DiagnosticsProperty('reviewCount', reviewCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductInfoDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.discrountRate, discrountRate) || other.discrountRate == discrountRate)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,subtitle,imageUrl,price,originalPrice,discrountRate,reviewCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductInfoDto(productId: $productId, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, price: $price, originalPrice: $originalPrice, discrountRate: $discrountRate, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class $ProductInfoDtoCopyWith<$Res>  {
  factory $ProductInfoDtoCopyWith(ProductInfoDto value, $Res Function(ProductInfoDto) _then) = _$ProductInfoDtoCopyWithImpl;
@useResult
$Res call({
 String? productId, String? title, String? subtitle, String? imageUrl, int? price, int? originalPrice, int? discrountRate, int? reviewCount
});




}
/// @nodoc
class _$ProductInfoDtoCopyWithImpl<$Res>
    implements $ProductInfoDtoCopyWith<$Res> {
  _$ProductInfoDtoCopyWithImpl(this._self, this._then);

  final ProductInfoDto _self;
  final $Res Function(ProductInfoDto) _then;

/// Create a copy of ProductInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = freezed,Object? title = freezed,Object? subtitle = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? originalPrice = freezed,Object? discrountRate = freezed,Object? reviewCount = freezed,}) {
  return _then(_self.copyWith(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int?,discrountRate: freezed == discrountRate ? _self.discrountRate : discrountRate // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductInfoDto with DiagnosticableTreeMixin implements ProductInfoDto {
  const _ProductInfoDto({this.productId = '', this.title = '', this.subtitle = '', this.imageUrl = '', this.price = -1, this.originalPrice = -1, this.discrountRate = -1, this.reviewCount = -1});
  factory _ProductInfoDto.fromJson(Map<String, dynamic> json) => _$ProductInfoDtoFromJson(json);

@override@JsonKey() final  String? productId;
@override@JsonKey() final  String? title;
@override@JsonKey() final  String? subtitle;
@override@JsonKey() final  String? imageUrl;
@override@JsonKey() final  int? price;
@override@JsonKey() final  int? originalPrice;
@override@JsonKey() final  int? discrountRate;
@override@JsonKey() final  int? reviewCount;

/// Create a copy of ProductInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductInfoDtoCopyWith<_ProductInfoDto> get copyWith => __$ProductInfoDtoCopyWithImpl<_ProductInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductInfoDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProductInfoDto'))
    ..add(DiagnosticsProperty('productId', productId))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('imageUrl', imageUrl))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('originalPrice', originalPrice))..add(DiagnosticsProperty('discrountRate', discrountRate))..add(DiagnosticsProperty('reviewCount', reviewCount));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductInfoDto&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.discrountRate, discrountRate) || other.discrountRate == discrountRate)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,title,subtitle,imageUrl,price,originalPrice,discrountRate,reviewCount);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProductInfoDto(productId: $productId, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, price: $price, originalPrice: $originalPrice, discrountRate: $discrountRate, reviewCount: $reviewCount)';
}


}

/// @nodoc
abstract mixin class _$ProductInfoDtoCopyWith<$Res> implements $ProductInfoDtoCopyWith<$Res> {
  factory _$ProductInfoDtoCopyWith(_ProductInfoDto value, $Res Function(_ProductInfoDto) _then) = __$ProductInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 String? productId, String? title, String? subtitle, String? imageUrl, int? price, int? originalPrice, int? discrountRate, int? reviewCount
});




}
/// @nodoc
class __$ProductInfoDtoCopyWithImpl<$Res>
    implements _$ProductInfoDtoCopyWith<$Res> {
  __$ProductInfoDtoCopyWithImpl(this._self, this._then);

  final _ProductInfoDto _self;
  final $Res Function(_ProductInfoDto) _then;

/// Create a copy of ProductInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = freezed,Object? title = freezed,Object? subtitle = freezed,Object? imageUrl = freezed,Object? price = freezed,Object? originalPrice = freezed,Object? discrountRate = freezed,Object? reviewCount = freezed,}) {
  return _then(_ProductInfoDto(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as int?,discrountRate: freezed == discrountRate ? _self.discrountRate : discrountRate // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
