import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/component/common_image.dart';
import '../../../../../core/utils/extensions.dart';
import '../../../../../core/utils/widgets/cart_counter_btn.dart';
import '../../../../../domain/model/display/cart/cart.model.dart';

import '../../../../../gen/assets.gen.dart';
import '../../bloc/cart_list_bloc/cart_list_bloc.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({required this.cart, super.key});
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final productId = cart.product.productId;
    final bool isSelected = context.select(
      (CartListBloc bloc) => bloc.state.selectedProduct.contains(productId),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).add(EdgeInsets.only(top: 20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 체크 박스
          GestureDetector(
            child:
                isSelected
                    ? Assets.svg.iconCheckmarkCircleFill.svg(
                      width: 28,
                      height: 28,
                      colorFilter: ColorFilter.mode(
                        (isSelected)
                            ? colorScheme.primary
                            : colorScheme.contentFourth,
                        BlendMode.srcIn,
                      ),
                    )
                    : Assets.svg.iconCheckmarkCircle.svg(
                      width: 28,
                      height: 28,
                      colorFilter: ColorFilter.mode(
                        (isSelected)
                            ? colorScheme.primary
                            : colorScheme.contentFourth,
                        BlendMode.srcIn,
                      ),
                    ),
            onTap:
                () => context.read<CartListBloc>().add(
                  CartListSelected(cart: cart),
                ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 상품 정보
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 상품 명
                          SizedBox(
                            height: 28,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                cart.product.title,
                                style:
                                    textTheme.titleSmall
                                        ?.titleCopyWith()
                                        .regular,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                          const SizedBox(height: 11),
                          // 상품 정보
                          SizedBox(
                            height: 75,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // 상품 이미지
                                CommonImage(cart.product.imageUrl, width: 60),

                                const SizedBox(width: 20),

                                // 상품 정보
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 가격
                                    Text(
                                      cart.product.price.toWon(),
                                      style:
                                          textTheme.titleMedium
                                              ?.priceCopyWith(),
                                    ),

                                    Spacer(),

                                    CartCountBtn(
                                      quantity: cart.quantity,
                                      decreased:
                                          () =>
                                              context.read<CartListBloc>().add(
                                                CartListQtyDecreased(
                                                  cart: cart,
                                                ),
                                              ),
                                      increased:
                                          () =>
                                              context.read<CartListBloc>().add(
                                                CartListQtyIncreased(
                                                  cart: cart,
                                                ),
                                              ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28,
                      child: GestureDetector(
                        child: Assets.svg.iconClose.svg(
                          width: 28,
                          height: 28,
                          colorFilter: ColorFilter.mode(
                            colorScheme.contentTertiary,
                            BlendMode.srcIn,
                          ),
                        ),
                        onTap:
                            () => context.read<CartListBloc>().add(
                              CartListDeleted(
                                productIds: [cart.product.productId],
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
