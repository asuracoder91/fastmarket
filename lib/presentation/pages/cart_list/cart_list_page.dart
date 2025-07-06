import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';
import '../../../core/utils/constant.dart';

import '../../../gen/assets.gen.dart';
import 'bloc/cart_list_bloc/cart_list_bloc.dart';
import 'component/cart_product_card/cart_product_card.dart';
import 'component/cart_total_price/card_total_price.dart';

class CartListPage extends StatelessWidget {
  const CartListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<CartListBloc>(context)..add(CartListInitialized()),
      child: const CartListView(),
    );
  }
}

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: GestureDetector(
            onTap: () {
              if (context.canPop()) {
                context.pop();
              }
            },
            child: Assets.svg.iconClose.svg(
              width: 28,
              height: 28,
              colorFilter: ColorFilter.mode(
                colorScheme.contentPrimary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        title: Text(
          '장바구니',
          style: textTheme.titleMedium.semiBold?.copyWith(
            color: colorScheme.contentPrimary,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: colorScheme.outline)),
            ),
            child: BlocBuilder<CartListBloc, CartListState>(
              builder: (context, state) {
                final bool isSelectedAll =
                    (state.selectedProduct.length == state.cartList.length) &&
                    state.cartList.isNotEmpty;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child:
                              isSelectedAll
                                  ? Assets.svg.iconCheckmarkCircleFill.svg(
                                    width: 28,
                                    height: 28,
                                    colorFilter: ColorFilter.mode(
                                      colorScheme.primary,
                                      BlendMode.srcIn,
                                    ),
                                  )
                                  : Assets.svg.iconCheckmarkCircle.svg(
                                    width: 28,
                                    height: 28,
                                    colorFilter: ColorFilter.mode(
                                      isSelectedAll
                                          ? colorScheme.primary
                                          : colorScheme.contentFourth,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                          onTap:
                              () => context.read<CartListBloc>().add(
                                CartListSelectedAll(),
                              ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '전체 선택 (${state.selectedProduct.length}/${state.cartList.length})',
                          style: textTheme.titleSmall?.copyWith(
                            color: colorScheme.contentPrimary,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Text(
                        '선택 삭제',
                        style: textTheme.titleSmall.semiBold?.copyWith(
                          color: colorScheme.contentSecondary,
                        ),
                      ),
                      onTap:
                          () => context.read<CartListBloc>().add(
                            CartListDeleted(productIds: state.selectedProduct),
                          ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        backgroundColor: colorScheme.surface,
        centerTitle: true,
      ),
      body: BlocBuilder<CartListBloc, CartListState>(
        builder: (_, state) {
          switch (state.status) {
            case Status.initial:
              return const Center(child: Text('initial'));
            case Status.loading:
              return const Center(child: Text('loading'));
            case Status.error:
              return Center(child: Text(state.error.toString()));

            case Status.success:
              return ListView(
                children: [
                  Divider(height: 8, thickness: 8, color: colorScheme.surface),
                  Column(
                    children: List.generate(
                      state.cartList.length,
                      (index) => CartProductCard(cart: state.cartList[index]),
                    ),
                  ),
                  CartTotalPrice(),
                ],
              );
          }
        },
      ),
    );
  }
}
