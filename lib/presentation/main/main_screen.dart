import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../gen/assets.gen.dart';
import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'cubit/cubit/bottom_nav_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavCubit(),
      child: const MainScreenView(),
    );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(44),
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              'tabBar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            leadingWidth: 86,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.svg.mainLogo.svg(),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Assets.svg.iconLocation.svg(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Assets.svg.iconCart.svg(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<BottomNavCubit, BottomNavState>(
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
            items: [
              BottomNavigationBarItem(
                icon: Assets.svg.navHome.svg(),
                activeIcon: Assets.svg.navHomeOn.svg(),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.navCategory.svg(),
                activeIcon: Assets.svg.navCategoryOn.svg(),
                label: 'category',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.navSearch.svg(),
                activeIcon: Assets.svg.navSearchOn.svg(),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Assets.svg.navUser.svg(),
                activeIcon: Assets.svg.navUserOn.svg(),
                label: 'user',
              ),
            ],
          );
        },
      ),
    );
  }
}
