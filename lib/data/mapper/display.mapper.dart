import 'package:fastmarket/data/dto/display/display.dto.dart';

import '../../domain/model/display/display.model.dart';
import '../dto/display/product_info/product_info.dto.dart';

extension MenuX on MenuDto {
  Menu toModel() {
    return Menu(tabId: tabId ?? 0, title: title ?? '');
  }
}

extension ViewModuleX on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
      time: time ?? -1,
      products: products?.map((dto) => dto.toModel()).toList() ?? [],
      tabs: tabs ?? [],
    );
  }
}

extension ProductInfoX on ProductInfoDto {
  ProductInfo toModel() {
    return ProductInfo(
      productId: productId ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
      price: price ?? -1,
      originalPrice: originalPrice ?? -1,
      discrountRate: discrountRate ?? -1,
      reviewCount: reviewCount ?? -1,
    );
  }
}
