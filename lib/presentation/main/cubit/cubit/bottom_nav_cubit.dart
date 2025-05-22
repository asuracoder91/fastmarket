import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(currentNav: BottomNav.home));

  void changeIndex(int index) {
    emit(BottomNavState(currentNav: BottomNav.values[index]));
  }
}
