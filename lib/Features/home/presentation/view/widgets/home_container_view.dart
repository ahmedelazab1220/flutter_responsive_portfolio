import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/utils/responsive.dart';
import 'home_container_view_body.dart';
import 'social_media_list.dart';

class HomeContainerView extends StatelessWidget {
  const HomeContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isLargeMobile(context))
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: const SocialMediaList(),
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.07,
            ),
            child: const HomeContainerViewBody(),
          ),
        ),
      ],
    );
  }
}
