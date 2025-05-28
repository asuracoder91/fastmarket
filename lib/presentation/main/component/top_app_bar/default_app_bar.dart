import 'package:fastmarket/core/theme/custom/custom_theme.dart';
import 'package:fastmarket/presentation/main/cubit/mall_type/cubit/mall_type_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bnb/bottom_nav_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key, required this.bottomNav});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(44),
      child: BlocBuilder<MallTypeCubit, MallTypeState>(
        builder: (context, state) {
          return Container(
            color:
                state.mallType.isMarket
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                bottomNav.name,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color:
                      state.mallType.isMarket
                          ? Theme.of(context).colorScheme.surface
                          : Theme.of(context).colorScheme.contentPrimary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
