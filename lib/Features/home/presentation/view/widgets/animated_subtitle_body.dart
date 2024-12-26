import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';

class AnimatedSubtitleBody extends StatelessWidget {
  const AnimatedSubtitleBody({
    super.key,
    required this.start,
    required this.end,
    required this.text,
  });

  final double start;
  final double end;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 6.sp,
              largeMobile: 20.sp,
              desktop: 9.sp,
            ),
            shadows: [
              Shadow(
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.grayColor.withOpacity(0.5)
                    : AppColors.pinkColor,
                offset: const Offset(0, 2),
                blurRadius: 10.r,
              ),
              Shadow(
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.whiteColor.withOpacity(0.5)
                    : AppColors.pinkColor,
                offset: const Offset(0, -2),
                blurRadius: 10.r,
              ),
            ],
          ),
        );
      },
    );
  }
}
