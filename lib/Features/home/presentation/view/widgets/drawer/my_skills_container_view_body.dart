import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../Core/utils/colors.dart';
import '../../../../../../Core/utils/responsive.dart';

class MySkillsContainerViewBody extends StatelessWidget {
  const MySkillsContainerViewBody({
    super.key,
    required this.percentage,
    required this.title,
    required this.image,
  });
  final double percentage;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    final responsivePadding = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 2.5.w,
      largeMobile: 8.w,
      desktop: 4.w,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                image,
                height: 20.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: responsivePadding,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const Spacer(),
              Text('${(percentage * 100).toInt().toString()}%'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: AppColors.blackColor,
              color: AppColors.amberAccentColor,
            ),
          ),
        ],
      ),
    );
  }
}
