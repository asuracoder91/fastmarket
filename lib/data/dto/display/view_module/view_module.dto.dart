import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_info/product_info.dto.dart';

part 'view_module.dto.freezed.dart';
part 'view_module.dto.g.dart';

@freezed
abstract class ViewModuleDto with _$ViewModuleDto {
  const factory ViewModuleDto({
    @Default('') String? type,
    @Default('') String? title,
    @Default('') String? subtitle,
    @Default('') String? imageUrl,
    @Default(0) int? time,
    @Default(<ProductInfoDto>[]) List<ProductInfoDto>? products,
    @Default([]) List<String> tabs,
  }) = _ViewModuleDto;

  factory ViewModuleDto.fromJson(Map<String, dynamic> json) =>
      _$ViewModuleDtoFromJson(json);
}
