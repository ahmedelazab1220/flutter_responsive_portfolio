import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../view_model/achievements_provider.dart';

class AchievementsLinks extends StatelessWidget {
  const AchievementsLinks({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AchievementsProvider>(context);
    return Container(
      padding: EdgeInsets.all(10.r),
      width: Responsive.getResponsiveValue(
        context,
        extraLargeScreen: MediaQuery.sizeOf(context).width * 0.12,
        largeMobile: MediaQuery.sizeOf(context).width * 0.33,
        desktop: MediaQuery.sizeOf(context).width * 0.2,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? AppColors.gradientColors2
              : AppColors.gradientColors5,
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(provider.achievementsList[index].link));
        },
        child: Row(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 33.sp,
                  largeMobile: 83.w,
                  desktop: 55.w,
                ),
              ),
              child: Text(
                'Check on ${provider.achievementsList[index].website}',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: Responsive.getResponsiveValue(
                        context,
                        extraLargeScreen: 3.sp,
                        largeMobile: 8.sp,
                        desktop: 4.sp,
                      ),
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: SvgPicture.asset(
                provider.achievementsList[index].image,
                height: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 3.5.w,
                  largeMobile: 10.w,
                  desktop: 5.5.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
