import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Core/utils/text.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../view_model/certifications_controller.dart';

class CustomCredentialsButton extends StatelessWidget {
  const CustomCredentialsButton({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CertificationProvider>(context, listen: false);
    return Container(
      padding: EdgeInsets.all(10.r),
      width: Responsive.getResponsiveValue(
        context,
        extraLargeScreen: MediaQuery.sizeOf(context).width * 0.1,
        largeMobile: MediaQuery.sizeOf(context).width * 0.3,
        desktop: MediaQuery.sizeOf(context).width * 0.15,
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
          launchUrl(
            Uri.parse(provider.certificateList[index].credential),
          );
        },
        child: Row(
          children: [
            Text(
              AppText.credentials,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 3.sp,
                  largeMobile: 10.sp,
                  desktop: 5.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Icon(
                CupertinoIcons.arrow_turn_up_right,
                color: Theme.of(context).primaryColor,
                size: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 4.w,
                  largeMobile: 10.w,
                  desktop: 6.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
