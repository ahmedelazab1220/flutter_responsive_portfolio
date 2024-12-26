import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../Core/utils/images.dart';
import '../../../../../../Core/utils/responsive.dart';

class KnowledgeBodyContainerView extends StatelessWidget {
  const KnowledgeBodyContainerView({
    super.key,
    required this.knowledge,
  });
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.check),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 2.5.w,
                  largeMobile: 8.w,
                  desktop: 4.w,
                ),
              ),
              child: Text(
                knowledge,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
