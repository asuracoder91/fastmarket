import 'package:flutter/material.dart';
import 'package:fastmarket/domain/model/display/view_module/view_module.model.dart';

import '../../../../../core/utils/component/common_image.dart';

class BannerViewModule extends StatelessWidget {
  final ViewModel info;

  const BannerViewModule({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return info.imageUrl.isNotEmpty
        ? AspectRatio(
          aspectRatio: 375 / 79,
          child: CommonImage(info.imageUrl, fit: BoxFit.fitWidth),
        )
        : const SizedBox.shrink();
  }
}
