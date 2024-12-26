import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../view_model/certifications_controller.dart';
import 'certification_subtitle.dart';
import 'custom_credentials_button.dart';

class CertificateInfoDetails extends StatelessWidget {
  const CertificateInfoDetails({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CertificationProvider>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          provider.certificateList[index].name,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 3.sp,
                  largeMobile: 10.sp,
                  desktop: 6.sp,
                ),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
          child: CertificationSubtitle(index: index),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 2.w,
                  largeMobile: 5.w,
                  desktop: 3.w,
                ),
              ),
              child: Text(
                'Skills : ',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: Responsive.getResponsiveValue(
                    context,
                    extraLargeScreen: 2.5.sp,
                    largeMobile: 10.sp,
                    desktop: 5.sp,
                  ),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 40.w,
                  largeMobile: 145.w,
                  desktop: 60.w,
                ),
              ),
              child: Text(
                provider.certificateList[index].skills,
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.blackColor
                      : AppColors.grayColor,
                  fontSize: Responsive.getResponsiveValue(
                    context,
                    extraLargeScreen: 2.5.sp,
                    largeMobile: 10.sp,
                    desktop: 5.sp,
                  ),
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomCredentialsButton(index: index),
      ],
    );
  }
}
