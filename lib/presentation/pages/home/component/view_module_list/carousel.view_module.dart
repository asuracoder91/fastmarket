import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/component/common_image.dart';
import '../../../../../domain/model/display/display.model.dart';
import 'view_module_factory/view_module_widget.dart';

class CarouselViewModule extends StatefulWidget with ViewModuleWidget {
  final ViewModule info;

  const CarouselViewModule({super.key, required this.info});

  @override
  State<CarouselViewModule> createState() => _CarouselViewModuleState();
}

class _CarouselViewModuleState extends State<CarouselViewModule> {
  int currentPage = 1;

  PageController pageController = PageController();

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = periodicTimer();
  }

  @override
  void dispose() {
    super.dispose();

    pageController.dispose();
    _timer.cancel();
  }

  Timer periodicTimer() {
    return Timer.periodic(Duration(seconds: 4), (timer) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<ProductInfo> products = widget.info.products;

    return RawGestureDetector(
      gestures: {
        CustomGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<CustomGestureRecognizer>(
              () => CustomGestureRecognizer(),
              (CustomGestureRecognizer instance) {
                instance.onDown = (_) {
                  if (_timer.isActive) {
                    _timer.cancel();
                  }
                };

                instance.onCancel = () {
                  if (!_timer.isActive) {
                    _timer = periodicTimer();
                  }
                };

                instance.onEnd = (_) {
                  if (!_timer.isActive) {
                    _timer = periodicTimer();
                  }
                };
              },
            ),
      },
      child: AspectRatio(
        aspectRatio: 375 / 340,
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              onPageChanged: (page) {
                setState(() {
                  currentPage = page % products.length + 1;
                });
              },
              itemBuilder: (_, index) {
                String src = products[index % products.length].imageUrl;

                return CommonImage(src);
              },
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PageCountWidget(
                  currentPage: currentPage,
                  totalPage: products.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGestureRecognizer extends HorizontalDragGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}

class PageCountWidget extends StatelessWidget {
  final int currentPage;
  final int totalPage;

  const PageCountWidget({
    super.key,
    required this.currentPage,
    required this.totalPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inverseSurface.withAlpha(170),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        child: Text(
          '$currentPage / $totalPage',
          style: Theme.of(
            context,
          ).textTheme.labelLarge?.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
