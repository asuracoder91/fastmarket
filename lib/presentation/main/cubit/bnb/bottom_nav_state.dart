part of 'bottom_nav_cubit.dart';

enum BottomNav { home, category, search, user }

@immutable
class BottomNavState {
  final BottomNav currentNav;

  const BottomNavState({required this.currentNav});
}

final class BottomNavInitial extends BottomNavState {
  const BottomNavInitial() : super(currentNav: BottomNav.home);
}

extension BottomNavX on BottomNav {
  SvgPicture get icon => switch (this) {
    BottomNav.home => Assets.svg.navHome.svg(),

    BottomNav.category => Assets.svg.navCategory.svg(),
    BottomNav.search => Assets.svg.navSearch.svg(),
    BottomNav.user => Assets.svg.navUser.svg(),
  };

  SvgPicture get activeIcon => switch (this) {
    BottomNav.home => Assets.svg.navHomeOn.svg(),

    BottomNav.category => Assets.svg.navCategoryOn.svg(),
    BottomNav.search => Assets.svg.navSearchOn.svg(),
    BottomNav.user => Assets.svg.navUserOn.svg(),
  };

  String get label => switch (this) {
    BottomNav.home => '홈',
    BottomNav.category => '카테고리',
    BottomNav.search => '검색',
    BottomNav.user => '마이페이지',
  };
}
