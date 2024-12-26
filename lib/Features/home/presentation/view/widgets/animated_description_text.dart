import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Core/utils/text.dart';

import '../../../../../Core/utils/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText({
    super.key,
    required this.start,
    required this.end,
  });
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 120.w,
              largeMobile: 300.w,
              desktop: 150.w,
            ),
          ),
          child: Text(
            AppText.descriptionHomeScreen,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displaySmall!,
          ),
        );
      },
    );
  }
}
