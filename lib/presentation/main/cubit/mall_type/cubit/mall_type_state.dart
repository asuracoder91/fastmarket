part of 'mall_type_cubit.dart';

@immutable
class MallTypeState {
  final MallType mallType;

  const MallTypeState({required this.mallType});
}

final class MallTypeInitial extends MallTypeState {
  const MallTypeInitial() : super(mallType: MallType.market);
}
