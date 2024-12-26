import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20.r),
          child: Container(
            height: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 35.h,
              largeMobile: 40.h,
              desktop: 35.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.getResponsiveValue(
                context,
                extraLargeScreen: 2.w,
                largeMobile: 5.w,
                desktop: 2.5.w,
              ),
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              gradient: LinearGradient(
                colors: Theme.of(context).brightness == Brightness.light
                    ? AppColors.themeLight
                    : AppColors.themeDark,
              ),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColors.grayColor.withOpacity(0.5)
                        : AppColors.pinkAccentColor.withOpacity(.5),
                    offset: const Offset(1, 1)),
                BoxShadow(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.whiteColor.withOpacity(0.5)
                      : AppColors.blueColor.withOpacity(.5),
                  offset: const Offset(-1, -1),
                ),
              ],
            ),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: AppColors.gradientColors,
                  ).createShader(bounds);
                },
                child: Icon(
                  Icons.menu,
                  color: Theme.of(context).primaryColor,
                  size: 24 * value,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
