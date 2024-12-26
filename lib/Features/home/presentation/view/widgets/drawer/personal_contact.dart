import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../Core/utils/images.dart';
import '../../../../../../Core/utils/text.dart';

class PersonalContact extends StatelessWidget {
  const PersonalContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(AppText.linkedinLink));
            },
            icon: SvgPicture.asset(AppImages.linkedin),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(AppText.githubLink));
            },
            icon: SvgPicture.asset(AppImages.github),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
