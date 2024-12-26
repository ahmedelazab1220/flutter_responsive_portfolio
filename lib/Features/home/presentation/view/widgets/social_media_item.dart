import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaItem extends StatelessWidget {
  const SocialMediaItem({
    super.key,
    required this.icon,
    this.onTap,
  });
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.r),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: SvgPicture.asset(
          icon,
          height: 15.h,
        ),
      ),
    );
  }
}
