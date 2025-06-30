import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_list_event.dart';
part 'cart_list_state.dart';
part 'cart_list_bloc.freezed.dart';

class CartListBloc extends Bloc<CartListEvent, CartListState> {
  CartListBloc() : super(_Initial()) {
    on<CartListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
