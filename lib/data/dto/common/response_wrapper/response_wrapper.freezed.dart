// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseWrapper<T> {

 String get status; String get code; String get message; T? get data;
/// Create a copy of ResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseWrapperCopyWith<T, ResponseWrapper<T>> get copyWith => _$ResponseWrapperCopyWithImpl<T, ResponseWrapper<T>>(this as ResponseWrapper<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseWrapper<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ResponseWrapper<$T>(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ResponseWrapperCopyWith<T,$Res>  {
  factory $ResponseWrapperCopyWith(ResponseWrapper<T> value, $Res Function(ResponseWrapper<T>) _then) = _$ResponseWrapperCopyWithImpl;
@useResult
$Res call({
 String status, String code, String message, T? data
});




}
/// @nodoc
class _$ResponseWrapperCopyWithImpl<T,$Res>
    implements $ResponseWrapperCopyWith<T, $Res> {
  _$ResponseWrapperCopyWithImpl(this._self, this._then);

  final ResponseWrapper<T> _self;
  final $Res Function(ResponseWrapper<T>) _then;

/// Create a copy of ResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = freezed,}) {
  return _then(ResponseWrapper(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


// dart format on
