// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_module.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewModuleDto implements DiagnosticableTreeMixin {

 String get type; String get title; String get subtitle; String get imageUrl;
/// Create a copy of ViewModuleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewModuleDtoCopyWith<ViewModuleDto> get copyWith => _$ViewModuleDtoCopyWithImpl<ViewModuleDto>(this as ViewModuleDto, _$identity);

  /// Serializes this ViewModuleDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ViewModuleDto'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('imageUrl', imageUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewModuleDto&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ViewModuleDto(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ViewModuleDtoCopyWith<$Res>  {
  factory $ViewModuleDtoCopyWith(ViewModuleDto value, $Res Function(ViewModuleDto) _then) = _$ViewModuleDtoCopyWithImpl;
@useResult
$Res call({
 String type, String title, String subtitle, String imageUrl
});




}
/// @nodoc
class _$ViewModuleDtoCopyWithImpl<$Res>
    implements $ViewModuleDtoCopyWith<$Res> {
  _$ViewModuleDtoCopyWithImpl(this._self, this._then);

  final ViewModuleDto _self;
  final $Res Function(ViewModuleDto) _then;

/// Create a copy of ViewModuleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ViewModuleDto with DiagnosticableTreeMixin implements ViewModuleDto {
  const _ViewModuleDto({this.type = '', this.title = '', this.subtitle = '', this.imageUrl = ''});
  factory _ViewModuleDto.fromJson(Map<String, dynamic> json) => _$ViewModuleDtoFromJson(json);

@override@JsonKey() final  String type;
@override@JsonKey() final  String title;
@override@JsonKey() final  String subtitle;
@override@JsonKey() final  String imageUrl;

/// Create a copy of ViewModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewModuleDtoCopyWith<_ViewModuleDto> get copyWith => __$ViewModuleDtoCopyWithImpl<_ViewModuleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewModuleDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ViewModuleDto'))
    ..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle))..add(DiagnosticsProperty('imageUrl', imageUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewModuleDto&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,subtitle,imageUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ViewModuleDto(type: $type, title: $title, subtitle: $subtitle, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ViewModuleDtoCopyWith<$Res> implements $ViewModuleDtoCopyWith<$Res> {
  factory _$ViewModuleDtoCopyWith(_ViewModuleDto value, $Res Function(_ViewModuleDto) _then) = __$ViewModuleDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, String subtitle, String imageUrl
});




}
/// @nodoc
class __$ViewModuleDtoCopyWithImpl<$Res>
    implements _$ViewModuleDtoCopyWith<$Res> {
  __$ViewModuleDtoCopyWithImpl(this._self, this._then);

  final _ViewModuleDto _self;
  final $Res Function(_ViewModuleDto) _then;

/// Create a copy of ViewModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? subtitle = null,Object? imageUrl = null,}) {
  return _then(_ViewModuleDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
