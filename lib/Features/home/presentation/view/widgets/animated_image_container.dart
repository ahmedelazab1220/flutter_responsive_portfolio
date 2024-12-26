import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/images.dart';
import '../../../../../Core/utils/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({super.key});

  @override
  State<AnimatedImageContainer> createState() => _AnimatedImageContainerState();
}

class _AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double scale = 1.0 + _controller.value * 0.1;
        return Transform.scale(
          scale: scale,
          child: Container(
            height: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 300,
              largeMobile: 200,
              desktop: 250,
            ),
            width: size.width < 250
                ? 80
                : Responsive.getResponsiveValue(
                    context,
                    extraLargeScreen: 250,
                    largeMobile: 150,
                    desktop: 200,
                  ),
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.getResponsiveValue(
                context,
                extraLargeScreen: 1.5.w,
                largeMobile: 2.5.w,
                desktop: 1.5.w,
              ),
              vertical: 4.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.r),
              gradient: LinearGradient(
                colors: AppColors.gradientColors2,
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.grayColor
                      : AppColors.pinkColor,
                  offset: const Offset(-2, 0),
                  blurRadius: 15.r,
                ),
                BoxShadow(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.whiteColor.withOpacity(0.3)
                      : AppColors.blueColor,
                  offset: const Offset(2, 0),
                  blurRadius: 15.r,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: Theme.of(context).brightness == Brightness.light
                      ? AppColors.themeLight
                      : AppColors.themeDark,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(27.r),
              ),
              child: Image.asset(
                AppImages.splashImage,
                height: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 250,
                  largeMobile: 150,
                  desktop: 200,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
