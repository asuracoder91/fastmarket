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
