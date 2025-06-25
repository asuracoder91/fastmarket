import 'package:flutter/material.dart';

import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/display.model.dart';
import '../../../../../gen/assets.gen.dart';
import 'view_module_factory/view_module_widget.dart';
import 'widget/product_card.component.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_title.dart';

class CategoryProductViewModule extends StatefulWidget with ViewModuleWidget {
  final ViewModule info;

  const CategoryProductViewModule({super.key, required this.info});

  @override
  State<CategoryProductViewModule> createState() =>
      _CategoryProductViewModuleState();
}

class _CategoryProductViewModuleState extends State<CategoryProductViewModule>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _initializeTabController();
  }

  void _initializeTabController() {
    final tabsLength = widget.info.tabs.length;
    if (tabsLength > 0) {
      _tabController = TabController(length: tabsLength, vsync: this)
        ..addListener(() {
          setState(() {});
        });
    }
  }

  @override
  void didUpdateWidget(CategoryProductViewModule oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.info.tabs.length != widget.info.tabs.length) {
      _tabController?.dispose();
      _initializeTabController();
    }
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final info = widget.info;

    // 데이터가 없으면 빈 컨테이너 반환
    if (info.tabs.isEmpty || info.products.isEmpty || _tabController == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ViewModulePadding(child: ViewModuleTitle(title: info.title)),
        const SizedBox(height: 12),
        TabBar(
          tabs: List.generate(
            info.tabs.length,
            (index) => Tab(text: info.tabs[index]),
          ),
          controller: _tabController!,
          isScrollable: true,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 13),
          dividerColor: Colors.transparent,
        ),
        const SizedBox(height: 12),
        Padding(
          padding: Constants.horizontalPadding,
          child: AspectRatio(
            aspectRatio: 343 / 452,
            child: TabBarView(
              controller: _tabController!,
              children: List.generate(info.tabs.length, (index) {
                return GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 8,
                    childAspectRatio: ((343 - 16) / 3) / ((452 - 12) / 2),
                  ),
                  itemBuilder: (_, productIndex) {
                    // 안전한 인덱스 접근
                    if (productIndex >= info.products.length) {
                      return const SizedBox.shrink();
                    }

                    final productInfo = info.products[productIndex];

                    return SmallProductCard(
                      context: context,
                      productInfo: productInfo,
                    );
                  },
                  itemCount: info.products.length,
                );
              }),
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          margin: Constants.horizontalPadding,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${info.tabs[_tabController!.index]} 전체보기',
                  style:
                      Theme.of(context).textTheme.titleSmall
                          ?.copyWith(color: colorScheme.contentPrimary)
                          .regular,
                ),
                Assets.svg.iconChevronRight.svg(
                  width: 16,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    colorScheme.contentPrimary,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
