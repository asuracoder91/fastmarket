import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../gen/assets.gen.dart';
import '../../cubit/mall_type/cubit/mall_type_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(44),
      child: BlocBuilder<MallTypeCubit, MallTypeState>(
        builder: (_, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            color: state.mallType.theme.backgroundColor,

            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                decoration: BoxDecoration(
                  color: state.mallType.theme.containerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(CustomAppBarTheme.tabBarRadius),
                  ),
                ),
                curve: Curves.easeInOut,
                child: SizedBox(
                  height: 28,

                  child: DefaultTabController(
                    initialIndex: state.mallType.index,
                    length: MallType.values.length,
                    child: TabBar(
                      onTap:
                          (index) =>
                              context.read<MallTypeCubit>().changeIndex(index),
                      labelColor: state.mallType.theme.labelColor,
                      unselectedLabelColor:
                          state.mallType.theme.unselectedLabelColor,
                      tabs:
                          MallType.values
                              .map((e) => Tab(text: e.toName))
                              .toList(),
                      indicator: BoxDecoration(
                        color: state.mallType.theme.indicatorColor,
                        borderRadius: BorderRadius.circular(
                          CustomAppBarTheme.tabBarRadius,
                        ),
                      ),
                      dividerColor: Colors.transparent,
                      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
                      labelStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                      unselectedLabelStyle:
                          Theme.of(context).textTheme.labelLarge,
                      splashBorderRadius: BorderRadius.circular(30),
                      isScrollable: false,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                ),
              ),
              leadingWidth: 86,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.svg.mainLogo.svg(
                  colorFilter: ColorFilter.mode(
                    state.mallType.theme.logoColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Assets.svg.iconLocation.svg(
                    colorFilter: ColorFilter.mode(
                      state.mallType.theme.iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Assets.svg.iconCart.svg(
                    colorFilter: ColorFilter.mode(
                      state.mallType.theme.iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
