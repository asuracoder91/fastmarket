part of 'mall_type_cubit.dart';

enum MallType { market, beauty }

@immutable
class MallTypeState {
  final MallType mallType;

  const MallTypeState({required this.mallType});
}

final class MallTypeInitial extends MallTypeState {
  const MallTypeInitial() : super(mallType: MallType.market);
}
