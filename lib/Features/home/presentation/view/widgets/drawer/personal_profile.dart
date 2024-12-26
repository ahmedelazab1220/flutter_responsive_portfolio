import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Core/utils/text.dart';

import '../../../../../../Core/utils/responsive.dart';
import 'drawer_image.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 2.5.w,
      largeMobile: 7.w,
      desktop: 2.5.w,
    );

    final titleFontSize = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 3.5.sp,
      largeMobile: 9.5.sp,
      desktop: 4.5.sp,
    );

    final subtitleFontSize = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 3.5.sp,
      largeMobile: 9.5.sp,
      desktop: 4.5.sp,
    );

    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: const DrawerImage(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: horizontalPadding,
            right: horizontalPadding,
            top: 10.h,
          ),
          child: Text(
            AppText.myName,
            style: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: titleFontSize,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.h,
            left: horizontalPadding,
            right: horizontalPadding,
          ),
          child: Text(
            AppText.myRoleDrawer,
            textAlign: TextAlign.center,
            style: theme.textTheme.displayMedium!.copyWith(
              fontSize: subtitleFontSize,
              fontWeight: FontWeight.w200,
              color: theme.textTheme.displayMedium!.color!.withOpacity(0.8),
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
