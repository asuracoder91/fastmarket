import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../dependency_injection.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../view_module_list/view_module_list.dart';

class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView(this.menus, this.mallType, {super.key});

  final List<Menu> menus;
  final MallType mallType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (_, state) {
        switch (state.status) {
          case Status.initial:
            return const SizedBox.shrink();
          case Status.loading:
            return Expanded(child: Center(child: CircularProgressIndicator()));
          case Status.success:
            return Expanded(
              child: TabBarView(
                children: List.generate(state.menus.length, (index) {
                  final tabId = menus[index].tabId;
                  return BlocProvider(
                    create:
                        (_) =>
                            getIt<ViewModuleBloc>()..add(
                              ViewModuleInitialized(tabId: menus[index].tabId),
                            ),
                    child: ViewModuleList(tabId: tabId),
                  );
                }),
              ),
            );
          case Status.error:
            return Center(child: Text('Error: ${state.error}'));
        }
      },
    );
  }
}
