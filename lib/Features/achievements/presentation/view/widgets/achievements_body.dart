import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';
import '../../../../../Core/widgets/custom_title.dart';
import '../../view_model/achievements_provider.dart';
import 'achievements_grid_view.dart';

class AchievementsBody extends StatelessWidget {
  const AchievementsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(bottom: 20.h),
            sliver: SliverToBoxAdapter(
              child: CustomTitle(
                prefix: AppText.achievements.substring(0, 5),
                title: AppText.achievements.substring(5),
              ),
            ),
          ),
          ChangeNotifierProvider(
            create: (context) => AchievementsProvider(),
            child: const Responsive(
              desktop: AchievementsGridView(crossAxisCount: 3),
              extraLargeScreen: AchievementsGridView(crossAxisCount: 4),
              largeMobile: AchievementsGridView(crossAxisCount: 1, ratio: 1.8),
              mobile: AchievementsGridView(crossAxisCount: 1, ratio: 1.5),
              tablet: AchievementsGridView(crossAxisCount: 2, ratio: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
