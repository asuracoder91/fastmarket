import 'package:fastmarket/data/data_source/remote/display.api.dart';
import 'package:fastmarket/data/mapper/display.mapper.dart';

import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/repository/display.repository.dart';
import '../../presentation/main/cubit/mall_type/cubit/mall_type_cubit.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';

class DisplayRepositoryImpl implements DisplayRepository {
  final DisplayApi _displayApi;

  DisplayRepositoryImpl(this._displayApi);

  @override
  Future<ResponseWrapper<List<Menu>>> getMenusByMallType({
    required MallType mallType,
  }) async {
    final response = await _displayApi.getMenusByMallType(mallType.name);

    return response.toModel<List<Menu>>(
      response.data?.map((dto) => dto.toModel()).toList() ?? [],
    );
  }
}
