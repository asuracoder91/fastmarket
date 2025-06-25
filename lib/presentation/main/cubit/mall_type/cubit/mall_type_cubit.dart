import 'package:fastmarket/core/theme/custom/custom_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/constant.dart';

part 'mall_type_state.dart';

class MallTypeCubit extends Cubit<MallTypeState> {
  MallTypeCubit() : super(MallTypeInitial());

  void changeIndex(int index) {
    emit(MallTypeState(mallType: MallType.values[index]));
  }
}

extension MallTypeX on MallType {
  String get toName => switch (this) {
    MallType.market => '마켓패캠',
    MallType.beauty => '뷰티패캠',
  };

  bool get isMarket => this == MallType.market;
  bool get isBeauty => this == MallType.beauty;

  CustomAppBarTheme get theme {
    switch (this) {
      case MallType.market:
        return CustomAppBarTheme.market;
      case MallType.beauty:
        return CustomAppBarTheme.beauty;
    }
  }
}
