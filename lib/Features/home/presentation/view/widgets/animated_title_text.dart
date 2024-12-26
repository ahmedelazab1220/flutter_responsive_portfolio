import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Core/utils/text.dart';

import '../../../../../Core/utils/responsive.dart';

class AnimatedTitleText extends StatelessWidget {
  const AnimatedTitleText({
    super.key,
    required this.start,
    required this.end,
  });
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return TweenAnimationBuilder(
          tween: Tween(begin: start, end: end),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 270.w),
              child: Text(
                AppText.myPersonalPortfolio,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: Responsive.getResponsiveValue(
                        context,
                        extraLargeScreen: 9.sp,
                        largeMobile: 25.sp,
                        desktop: 15.sp,
                      ),
                    ),
              ),
            );
          },
        );
      },
    );
  }
}
