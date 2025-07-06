// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartListState {

 Status get status; List<Cart> get cartList; List<String> get selectedProduct; int get totalPrice; ErrorResponse get error;
/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartListStateCopyWith<CartListState> get copyWith => _$CartListStateCopyWithImpl<CartListState>(this as CartListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.cartList, cartList)&&const DeepCollectionEquality().equals(other.selectedProduct, selectedProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(cartList),const DeepCollectionEquality().hash(selectedProduct),totalPrice,error);

@override
String toString() {
  return 'CartListState(status: $status, cartList: $cartList, selectedProduct: $selectedProduct, totalPrice: $totalPrice, error: $error)';
}


}

/// @nodoc
abstract mixin class $CartListStateCopyWith<$Res>  {
  factory $CartListStateCopyWith(CartListState value, $Res Function(CartListState) _then) = _$CartListStateCopyWithImpl;
@useResult
$Res call({
 Status status, List<Cart> cartList, List<String> selectedProduct, int totalPrice, ErrorResponse error
});




}
/// @nodoc
class _$CartListStateCopyWithImpl<$Res>
    implements $CartListStateCopyWith<$Res> {
  _$CartListStateCopyWithImpl(this._self, this._then);

  final CartListState _self;
  final $Res Function(CartListState) _then;

/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cartList = null,Object? selectedProduct = null,Object? totalPrice = null,Object? error = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,cartList: null == cartList ? _self.cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<Cart>,selectedProduct: null == selectedProduct ? _self.selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as List<String>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}

}


/// @nodoc


class _CartListState implements CartListState {
   _CartListState({this.status = Status.initial, final  List<Cart> cartList = const <Cart>[], final  List<String> selectedProduct = const <String>[], this.totalPrice = 0, this.error = const ErrorResponse()}): _cartList = cartList,_selectedProduct = selectedProduct;
  

@override@JsonKey() final  Status status;
 final  List<Cart> _cartList;
@override@JsonKey() List<Cart> get cartList {
  if (_cartList is EqualUnmodifiableListView) return _cartList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartList);
}

 final  List<String> _selectedProduct;
@override@JsonKey() List<String> get selectedProduct {
  if (_selectedProduct is EqualUnmodifiableListView) return _selectedProduct;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedProduct);
}

@override@JsonKey() final  int totalPrice;
@override@JsonKey() final  ErrorResponse error;

/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartListStateCopyWith<_CartListState> get copyWith => __$CartListStateCopyWithImpl<_CartListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._cartList, _cartList)&&const DeepCollectionEquality().equals(other._selectedProduct, _selectedProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_cartList),const DeepCollectionEquality().hash(_selectedProduct),totalPrice,error);

@override
String toString() {
  return 'CartListState(status: $status, cartList: $cartList, selectedProduct: $selectedProduct, totalPrice: $totalPrice, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CartListStateCopyWith<$Res> implements $CartListStateCopyWith<$Res> {
  factory _$CartListStateCopyWith(_CartListState value, $Res Function(_CartListState) _then) = __$CartListStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, List<Cart> cartList, List<String> selectedProduct, int totalPrice, ErrorResponse error
});




}
/// @nodoc
class __$CartListStateCopyWithImpl<$Res>
    implements _$CartListStateCopyWith<$Res> {
  __$CartListStateCopyWithImpl(this._self, this._then);

  final _CartListState _self;
  final $Res Function(_CartListState) _then;

/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cartList = null,Object? selectedProduct = null,Object? totalPrice = null,Object? error = null,}) {
  return _then(_CartListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,cartList: null == cartList ? _self._cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<Cart>,selectedProduct: null == selectedProduct ? _self._selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as List<String>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,
  ));
}


}

// dart format on
