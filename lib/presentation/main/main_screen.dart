import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/bottom_sheet/cart_bottom_sheet.dart';
import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'bloc/cart_bloc/cart_bloc.dart';
import 'component/top_app_bar/top_app_bar.dart';
import 'cubit/bnb/bottom_nav_cubit.dart';
import 'cubit/mall_type/cubit/mall_type_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavCubit()),
        BlocProvider(create: (_) => MallTypeCubit()),
      ],
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          cartBottomSheet(
            context,
          ).whenComplete(() => context.read<CartBloc>().add(CartClosed()));
        },
        listenWhen:
            (previous, current) =>
                previous.status.isClose && current.status.isOpen,
        child: BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (_, state) {
            switch (state.currentNav) {
              case BottomNav.home:
                return const HomePage();
              case BottomNav.category:
                return const CategoryPage();
              case BottomNav.search:
                return const SearchPage();
              case BottomNav.user:
                return const UserPage();
            }
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (_, state) {
          return BottomNavigationBar(
            currentIndex: state.currentNav.index,
            onTap: (index) {
              context.read<BottomNavCubit>().changeIndex(index);
            },
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              BottomNav.values.length,
              (index) => BottomNavigationBarItem(
                icon: BottomNav.values[index].icon,
                activeIcon: BottomNav.values[index].activeIcon,
                label: BottomNav.values[index].label,
              ),
            ),
          );
        },
      ),
    );
  }
}
