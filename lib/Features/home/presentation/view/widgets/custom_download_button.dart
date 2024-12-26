import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Core/utils/text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';

class CustomDownloadButton extends StatelessWidget {
  const CustomDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(AppText.cvLink));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: Responsive.getResponsiveValue(
            context,
            extraLargeScreen: 5.w,
            largeMobile: 12.w,
            desktop: 8.w,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColors.lightPinkColor.withOpacity(0.5)
                  : AppColors.blueColor,
              offset: const Offset(0, -1),
              blurRadius: 5.r,
            ),
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColors.lightPinkColor.withOpacity(0.5)
                  : AppColors.redColor,
              offset: const Offset(0, 1),
              blurRadius: 5.r,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: Theme.of(context).brightness == Brightness.light
                ? AppColors.gradientColors2
                : AppColors.gradientColors,
          ),
        ),
        child: Row(
          children: [
            Text(
              AppText.downloadCvTextButton,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    letterSpacing: 1.2,
                    fontSize: Responsive.getResponsiveValue(
                      context,
                      extraLargeScreen: 3.sp,
                      largeMobile: 7.sp,
                      desktop: 4.5.sp,
                    ),
                  ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Icon(
                FontAwesomeIcons.download,
                color: Theme.of(context).primaryColor.withOpacity(0.7),
                size: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 4.w,
                  largeMobile: 10.5.w,
                  desktop: 6.w,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
