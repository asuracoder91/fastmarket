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

 Status get status; ErrorResponse get error; List<Cart> get cartList; List<String> get selectedProduct; int get totalPrice;
/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartListStateCopyWith<CartListState> get copyWith => _$CartListStateCopyWithImpl<CartListState>(this as CartListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartListState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.cartList, cartList)&&const DeepCollectionEquality().equals(other.selectedProduct, selectedProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,const DeepCollectionEquality().hash(cartList),const DeepCollectionEquality().hash(selectedProduct),totalPrice);

@override
String toString() {
  return 'CartListState(status: $status, error: $error, cartList: $cartList, selectedProduct: $selectedProduct, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $CartListStateCopyWith<$Res>  {
  factory $CartListStateCopyWith(CartListState value, $Res Function(CartListState) _then) = _$CartListStateCopyWithImpl;
@useResult
$Res call({
 Status status, ErrorResponse error, List<Cart> cartList, List<String> selectedProduct, int totalPrice
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? error = null,Object? cartList = null,Object? selectedProduct = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,cartList: null == cartList ? _self.cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<Cart>,selectedProduct: null == selectedProduct ? _self.selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as List<String>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _CartListState implements CartListState {
   _CartListState({this.status = Status.initial, this.error = const ErrorResponse(), final  List<Cart> cartList = const <Cart>[], final  List<String> selectedProduct = const <String>[], this.totalPrice = 0}): _cartList = cartList,_selectedProduct = selectedProduct;
  

@override@JsonKey() final  Status status;
@override@JsonKey() final  ErrorResponse error;
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

/// Create a copy of CartListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartListStateCopyWith<_CartListState> get copyWith => __$CartListStateCopyWithImpl<_CartListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartListState&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._cartList, _cartList)&&const DeepCollectionEquality().equals(other._selectedProduct, _selectedProduct)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,error,const DeepCollectionEquality().hash(_cartList),const DeepCollectionEquality().hash(_selectedProduct),totalPrice);

@override
String toString() {
  return 'CartListState(status: $status, error: $error, cartList: $cartList, selectedProduct: $selectedProduct, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CartListStateCopyWith<$Res> implements $CartListStateCopyWith<$Res> {
  factory _$CartListStateCopyWith(_CartListState value, $Res Function(_CartListState) _then) = __$CartListStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, ErrorResponse error, List<Cart> cartList, List<String> selectedProduct, int totalPrice
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? error = null,Object? cartList = null,Object? selectedProduct = null,Object? totalPrice = null,}) {
  return _then(_CartListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ErrorResponse,cartList: null == cartList ? _self._cartList : cartList // ignore: cast_nullable_to_non_nullable
as List<Cart>,selectedProduct: null == selectedProduct ? _self._selectedProduct : selectedProduct // ignore: cast_nullable_to_non_nullable
as List<String>,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
