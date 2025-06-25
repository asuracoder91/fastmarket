import 'package:fastmarket/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/dialog/common_dialog.dart';
import '../../main/cubit/mall_type/cubit/mall_type_cubit.dart';
import 'bloc/menu_bloc/menu_bloc.dart';
import 'component/global_nav/global_nav_bar.dart';
import 'component/global_nav/global_nav_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallTypeState>(
      builder: (context, state) {
        return BlocProvider(
          create:
              (_) => locator<MenuBloc>()..add(MenuInitialized(state.mallType)),
          child: const HomePageView(),
        );
      },
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<MallTypeCubit, MallTypeState>(
        listener: (context, state) {
          context.read<MenuBloc>().add(MenuInitialized(state.mallType));
        },
        listenWhen: (prev, curr) => prev.mallType.index != curr.mallType.index,
        child: BlocConsumer<MenuBloc, MenuState>(
          listener: (context, state) async {
            if (state.status == Status.error) {
              final bool result =
                  (await CommonDialog.errorDialog(context, state.error) ??
                      false);
              if (result && context.mounted) {
                context.read<MenuBloc>().add(MenuInitialized(MallType.market));
              }
            }
          },
          listenWhen: (prev, curr) => prev.status != curr.status,
          builder: (_, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(child: CircularProgressIndicator());
              case Status.loading:
                return DefaultTabController(
                  key: ValueKey<MallType>(state.mallType),
                  length: state.menus.length,
                  child: Column(
                    children: [
                      GlobalNavBar(state.menus),
                      GlobalNavBarView(state.menus, state.mallType),
                    ],
                  ),
                );
              case Status.success:
                return DefaultTabController(
                  key: ValueKey<MallType>(state.mallType),
                  length: state.menus.length,
                  child: Column(
                    children: [
                      GlobalNavBar(state.menus),
                      GlobalNavBarView(state.menus, state.mallType),
                    ],
                  ),
                );
              case Status.error:
                return const Center(child: Text('Error'));
            }
          },
        ),
      ),
    );
  }
}
