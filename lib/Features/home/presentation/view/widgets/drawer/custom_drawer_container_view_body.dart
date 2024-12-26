import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/utils/responsive.dart';
import 'knowledge_container_view.dart';
import 'my_skills_container_view.dart';
import 'personal_contact.dart';
import 'personal_profile_info.dart';

class CustomDrawerContainerViewBody extends StatelessWidget {
  const CustomDrawerContainerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final responsivePadding = Responsive.getResponsiveValue(
      context,
      extraLargeScreen: 2.5.w,
      largeMobile: 10.w,
      desktop: 4.w,
    );
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: responsivePadding,
        vertical: 15.h,
      ),
      sliver: SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PersonalProfileInfo(),
            const MySkillsContainerView(),
            const KnowledgeContainerView(),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: const PersonalContact(),
            ),
          ],
        ),
      ),
    );
  }
}
