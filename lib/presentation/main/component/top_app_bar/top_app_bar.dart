import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bnb/bottom_nav_cubit.dart';
import 'default_app_bar.dart';
import 'home_app_bar.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (_, state) {
        switch (state.currentNav) {
          case BottomNav.home:
            return const HomeAppBar();
          case BottomNav.category:
          case BottomNav.search:
          case BottomNav.user:
            return DefaultAppBar(bottomNav: state.currentNav);
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
