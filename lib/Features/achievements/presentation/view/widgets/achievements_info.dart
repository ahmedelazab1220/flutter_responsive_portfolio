import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/colors.dart';
import '../../view_model/achievements_provider.dart';
import 'achievements_info_details.dart';

class AchievementsInfo extends StatelessWidget {
  const AchievementsInfo({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AchievementsProvider>(context);
    return InkWell(
      onHover: (value) {
        provider.onHover(index, value);
      },
      onTap: () {},
      borderRadius: BorderRadius.circular(30.r),
      child: AnimatedContainer(
        padding: EdgeInsets.only(
          left: 7.w,
          right: 7.w,
          top: 12.h,
          bottom: 12.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light
                ? AppColors.gradientColors2
                : AppColors.themeDark,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        child: AchievementsInfoDetails(
          index: index,
        ),
      ),
    );
  }
}
