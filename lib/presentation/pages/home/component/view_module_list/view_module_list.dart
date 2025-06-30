import 'package:fastmarket/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../footer/footer.dart';

class ViewModuleList extends StatefulWidget {
  const ViewModuleList({super.key, required this.tabId});

  final int tabId;

  @override
  State<ViewModuleList> createState() => _ViewModuleListState();
}

class _ViewModuleListState extends State<ViewModuleList> {
  final ScrollController scrollController = ScrollController();

  bool get _isEnd {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final curScroll = scrollController.offset;
    return curScroll >= maxScroll * 0.9;
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isEnd) {
      context.read<ViewModuleBloc>().add(ViewModuleFetched());
    }
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        return context.read<ViewModuleBloc>().add(
          ViewModuleInitialized(tabId: widget.tabId, isRefresh: true),
        );
      },
      child: BlocBuilder<ViewModuleBloc, ViewModuleState>(
        builder: (_, state) {
          return (state.status.isInitial || state.viewModules.isEmpty)
              ? LoadingWidget()
              : ListView(
                controller: scrollController,
                children: [
                  ...state.viewModules,
                  if (state.status.isLoading) LoadingWidget(isBottom: true),
                  Footer(),
                ],
              );

          // switch (state.status) {
          //   case Status.initial:
          //     return const SizedBox.shrink();
          //   case Status.loading:
          //     return Center(child: CircularProgressIndicator());
          //   case Status.success:
          //     return Column(
          //       children: [
          //         Container(
          //           color: Colors.deepOrangeAccent,
          //           height: 50,
          //           child: Center(child: Text('tabId: ${state.tabId}')),
          //         ),
          //         Expanded(
          //           child: ListView.separated(
          //             itemBuilder: (_, index) => state.viewModules[index],
          //             separatorBuilder: (_, index) => Divider(thickness: 4),
          //             itemCount: state.viewModules.length,
          //           ),
          //         ),
          //       ],
          //     );
          //   case Status.error:
          //     return Center(child: Text('Error: ${state.error}'));
          // }
        },
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({this.isBottom = false, super.key});

  final bool isBottom;

  @override
  Widget build(BuildContext context) {
    return (isBottom)
        ? SizedBox(
          height: 50,
          child: Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        )
        : Center(child: CircularProgressIndicator());
  }
}
