import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../theme/custom/custom_font_weight.dart';
import '../../theme/custom/custom_theme.dart';

/// 96
const double _counterWidth = 96;

/// 36
const double _counterHeight = 36;

/// 16
const double _counterIconSize = 16;

/// 8
const double _counterIconPadding = 8;

class CartCountBtn extends StatelessWidget {
  final int quantity;
  final VoidCallback? increased;
  final VoidCallback? decreased;

  const CartCountBtn({
    required this.quantity,
    required this.decreased,
    required this.increased,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.outline),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      width: _counterWidth,
      height: _counterHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: decreased,
            child: Assets.svg.iconSubtract.svg(
              colorFilter: ColorFilter.mode(
                (quantity != 1)
                    ? colorScheme.contentPrimary
                    : colorScheme.contentFourth,
                BlendMode.srcIn,
              ),
            ),
          ),
          Text('$quantity', style: textTheme.labelLarge.semiBold),

          GestureDetector(
            onTap: increased,
            child: Assets.svg.iconAdd.svg(
              colorFilter: ColorFilter.mode(
                colorScheme.contentPrimary,
                BlendMode.srcIn,
              ),
              width: _counterIconSize,
              height: _counterIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
