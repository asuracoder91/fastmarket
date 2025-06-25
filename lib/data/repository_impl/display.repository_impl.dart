import 'package:fastmarket/data/data_source/remote/display.api.dart';
import 'package:fastmarket/data/mapper/display.mapper.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/repository/display.repository.dart';
import '../../core/utils/constant.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';
import '../../domain/model/display/cart/cart.model.dart';
import '../../domain/model/display/view_module/view_module.model.dart';

@Singleton(as: DisplayRepository)
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

  @override
  Future<ResponseWrapper<List<ViewModule>>> getViewModulesByTabId({
    required int tabId,
    required int page,
    required bool isRefresh,
  }) async {
    final response = await _displayApi.getViewModulesByTabId(tabId, page);
    return response.toModel<List<ViewModule>>(
      response.data?.map((dto) => dto.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> getCartList() async {
    throw UnimplementedError();
  }

  @override
  Future<ResponseWrapper<List<Cart>>> addCartList({required Cart cart}) async {
    throw UnimplementedError();
  }

  @override
  Future<ResponseWrapper<List<Cart>>> deleteCartByPrdId(
    List<String> productIds,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<ResponseWrapper<List<Cart>>> clearCartList() async {
    throw UnimplementedError();
  }

  @override
  Future<ResponseWrapper<List<Cart>>> changeCartQuantityByPrdId({
    required String productId,
    required int qty,
  }) async {
    throw UnimplementedError();
  }
}
