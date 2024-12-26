import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';
import 'animated_subtitle_body.dart';

class AnimatedSubtitle extends StatelessWidget {
  const AnimatedSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 250.w, maxHeight: 50.h),
      child: Wrap(
        children: [
          Responsive(
            desktop: AnimatedSubtitleBody(
                start: 30, end: 40, text: "${AppText.role.substring(0, 4)} "),
            largeMobile: AnimatedSubtitleBody(
                start: 30, end: 25, text: "${AppText.role.substring(0, 4)} "),
            mobile: AnimatedSubtitleBody(
                start: 25, end: 20, text: "${AppText.role.substring(0, 4)} "),
            tablet: AnimatedSubtitleBody(
                start: 40, end: 30, text: "${AppText.role.substring(0, 4)} "),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: Theme.of(context).brightness == Brightness.light
                    ? [
                        AppColors.lightPinkColor,
                        AppColors.lightPinkColor,
                      ]
                    : AppColors.gradientColors3,
              ).createShader(bounds);
            },
            child: Responsive(
              desktop: AnimatedSubtitleBody(
                  start: 30, end: 40, text: "${AppText.role.substring(5)} "),
              largeMobile: AnimatedSubtitleBody(
                  start: 30, end: 25, text: "${AppText.role.substring(5)} "),
              mobile: AnimatedSubtitleBody(
                  start: 25, end: 20, text: "${AppText.role.substring(5)} "),
              tablet: AnimatedSubtitleBody(
                  start: 40, end: 30, text: "${AppText.role.substring(5)} "),
            ),
          ),
        ],
      ),
    );
  }
}
