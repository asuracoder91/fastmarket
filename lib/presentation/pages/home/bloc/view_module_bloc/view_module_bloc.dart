import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_module_event.dart';
part 'view_module_state.dart';
part 'view_module_bloc.freezed.dart';

class ViewModuleBloc extends Bloc<ViewModuleEvent, ViewModuleState> {
  ViewModuleBloc() : super(_Initial()) {
    on<ViewModuleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
