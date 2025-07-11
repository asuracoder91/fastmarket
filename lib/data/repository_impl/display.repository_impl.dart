import 'package:fastmarket/data/data_source/remote/display.api.dart';
import 'package:fastmarket/data/mapper/display.mapper.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/display/menu/menu.model.dart';
import '../../domain/repository/display.repository.dart';
import '../../core/utils/constant.dart';
import '../data_source/local_storage/display.dao.dart';
import '../dto/common/response_wrapper/response_wrapper.dart';
import '../mapper/common.mapper.dart';
import '../../domain/model/display/cart/cart.model.dart';
import '../../domain/model/display/view_module/view_module.model.dart';

@Singleton(as: DisplayRepository)
class DisplayRepositoryImpl implements DisplayRepository {
  final DisplayApi _displayApi;
  final DisplayDao _displayDao;
  DisplayRepositoryImpl(this._displayApi, this._displayDao);

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
    final response = await _displayDao.getCartList();
    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> addCartList({required Cart cart}) async {
    final response = await _displayDao.insertCart(cart.toEntity());
    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> deleteCartByPrdId(
    List<String> productIds,
  ) async {
    final response = await _displayDao.deleteCart(productIds);
    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> clearCartList() async {
    final response = await _displayDao.clearCart();
    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }

  @override
  Future<ResponseWrapper<List<Cart>>> changeCartQuantityByPrdId({
    required String productId,
    required int qty,
  }) async {
    final response = await _displayDao.changeQtyCart(productId, qty);
    return response.toModel<List<Cart>>(
      response.data?.map((cartEntity) => cartEntity.toModel()).toList() ?? [],
    );
  }
}
