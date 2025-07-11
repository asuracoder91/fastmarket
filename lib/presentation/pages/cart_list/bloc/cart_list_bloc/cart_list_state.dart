part of 'cart_list_bloc.dart';

@freezed
abstract class CartListState with _$CartListState {
  factory CartListState({
    @Default(Status.initial) Status status,
    @Default(<Cart>[]) List<Cart> cartList,
    @Default(<String>[]) List<String> selectedProduct,
    @Default(0) int totalPrice,
    @Default(ErrorResponse()) ErrorResponse error,
  }) = _CartListState;
}
