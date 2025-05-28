import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState(currentNav: BottomNav.home));

  void changeIndex(int index) {
    emit(BottomNavState(currentNav: BottomNav.values[index]));
  }
}
