import 'package:fastmarket/core/theme/custom/custom_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';

class GlobalNavBar extends StatelessWidget {
  const GlobalNavBar(this.menus, {super.key});

  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Stack(
          children: [
            TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: colorScheme.primary, width: 2),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              labelStyle: textTheme.titleSmall?.semiBold,
              unselectedLabelStyle: textTheme.titleSmall,
              splashFactory: NoSplash.splashFactory,
              tabs: List.generate(
                menus.length,
                (index) => Tab(text: menus[index].title),
              ),
            ),
            if (state.status == Status.loading)
              Positioned.fill(
                bottom: 0,
                child: ColoredBox(
                  color: Colors.black.withValues(alpha: 0.2),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        );
      },
    );
  }
}
