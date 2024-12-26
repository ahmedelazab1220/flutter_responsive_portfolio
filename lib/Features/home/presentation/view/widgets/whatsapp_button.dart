import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(AppText.whatsappLink));
      },
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light
                ? AppColors.gradientColors2
                : AppColors.gradientColors,
          ),
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
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.whatsapp,
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColors.blackColor
                  : AppColors.greenAccentColor,
              size: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Text(
                AppText.whatsapp,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: Responsive.getResponsiveValue(
                        context,
                        extraLargeScreen: 4.sp,
                        largeMobile: 8.sp,
                        desktop: 5.sp,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
