import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

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
}
