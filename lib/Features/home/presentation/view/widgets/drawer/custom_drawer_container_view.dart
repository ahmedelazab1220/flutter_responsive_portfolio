import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_drawer_container_view_body.dart';
import 'personal_profile.dart';

class CustomDrawerContainerView extends StatelessWidget {
  const CustomDrawerContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          sliver: const SliverToBoxAdapter(
            child: PersonalProfile(),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
          ),
        ),
        const CustomDrawerContainerViewBody(),
      ],
    );
  }
}
