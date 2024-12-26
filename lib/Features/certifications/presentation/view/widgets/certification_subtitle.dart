import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../view_model/certifications_controller.dart';

class CertificationSubtitle extends StatelessWidget {
  const CertificationSubtitle({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CertificationProvider>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 150.w,
              largeMobile: 150.w,
              desktop: 70.w,
            ),
          ),
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            provider.certificateList[index].organization,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : AppColors.amberColor,
              fontSize: Responsive.getResponsiveValue(
                context,
                extraLargeScreen: 3.w,
                largeMobile: 10.w,
                desktop: 6.w,
              ),
            ),
          ),
        ),
        const Spacer(),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: Responsive.getResponsiveValue(
              context,
              extraLargeScreen: 15.w,
              largeMobile: 45.w,
              desktop: 30.w,
            ),
          ),
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            provider.certificateList[index].date,
            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : AppColors.grayColor,
              fontSize: Responsive.getResponsiveValue(
                context,
                extraLargeScreen: 2.5.sp,
                largeMobile: 10.5.sp,
                desktop: 4.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
