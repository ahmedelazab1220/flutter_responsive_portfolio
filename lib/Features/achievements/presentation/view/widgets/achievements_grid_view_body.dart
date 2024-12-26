import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/colors.dart';
import '../../view_model/achievements_provider.dart';
import 'achievements_info.dart';

class AchievementsGridViewBody extends StatelessWidget {
  const AchievementsGridViewBody({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AchievementsProvider>(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(vertical: 14.h, horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? AppColors.themeLight
              : AppColors.gradientColors,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.grayColor
                : AppColors.pinkColor,
            offset: const Offset(-2, 0),
            blurRadius: provider.hovers[index] ? 20.r : 10.r,
          ),
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.whiteColor
                : AppColors.blueColor,
            offset: const Offset(2, 0),
            blurRadius: provider.hovers[index] ? 20.r : 10.r,
          ),
        ],
      ),
      child: AchievementsInfo(index: index),
    );
  }
}
