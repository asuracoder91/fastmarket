part of 'cart_list_bloc.dart';

@freezed
class CartListEvent with _$CartListEvent {
  const factory CartListEvent.started() = _Started;
}