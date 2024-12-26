import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../Core/utils/colors.dart';
import '../../../../../../Core/utils/images.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.h,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 0.3.w, vertical: 0.3.h),
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
                : AppColors.pinkColor,
            blurRadius: 7.r,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.lightPinkColor.withOpacity(0.5)
                : AppColors.blueColor,
            blurRadius: 7.r,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: AppImages.photoProfile.endsWith('svg')
            ? SvgPicture.asset(
                AppImages.photoProfile,
                fit: BoxFit.cover,
              )
            : Image.asset(
                AppImages.photoProfile,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
