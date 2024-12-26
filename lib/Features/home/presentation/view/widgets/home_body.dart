import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/responsive.dart';
import '../../../../about/presentation/view/about_screen.dart';
import '../../../../achievements/presentation/view/achievements_screen.dart';
import '../../../../certifications/presentation/view/certifications_screen.dart';
import '../../../../projects/presentation/view/project_screen.dart';
import '../../view_model/page_controller_provider.dart';
import 'home_container_view.dart';
import 'nav_button_list.dart';
import 'top_nav_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageControllerProvider>(context);
    var size = MediaQuery.sizeOf(context);
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(top: 20.h),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: 80.h,
              child: const TopNavBar(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Responsive.isLargeMobile(context)
              ? size.width <= 250
                  ? const SizedBox.shrink()
                  : const Row(
                      children: [
                        Spacer(),
                        NavButtonList(),
                        Spacer(),
                      ],
                    )
              : const SizedBox.shrink(),
        ),
        SliverFillRemaining(
          child: PageView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            controller: provider.controller,
            children: const [
              HomeContainerView(),
              AboutScreen(),
              ProjectScreen(),
              CertificationsScreen(),
              AchievementsScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
