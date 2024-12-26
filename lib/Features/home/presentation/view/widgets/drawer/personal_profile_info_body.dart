import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/utils/responsive.dart';

class PersonalProfileInfoBody extends StatelessWidget {
  const PersonalProfileInfoBody({
    super.key,
    required this.content,
    required this.title,
  });
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleFontSize = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 3.5.sp,
      largeMobile: 9.5.sp,
      desktop: 6.5.sp,
    );
    final contentFontSize = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 2.5.sp,
      largeMobile: 7.5.sp,
      desktop: 4.5.sp,
    );
    final maxWidthConstraint = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 37.w,
      largeMobile: 95.w,
      desktop: 43.w,
    );
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium!.copyWith(
              fontSize: titleFontSize,
            ),
          ),
          const Spacer(flex: 1),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidthConstraint),
            child: Text(
              content,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.primaryColor.withOpacity(0.7),
                fontSize: contentFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
