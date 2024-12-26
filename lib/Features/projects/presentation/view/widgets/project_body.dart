import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/responsive.dart';
import '../../../../../Core/utils/text.dart';
import '../../../../../Core/widgets/custom_title.dart';
import '../../view_model/project_provider.dart';
import 'project_grid_view.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key});

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
                prefix: AppText.latestProjects.substring(0, 6),
                title: AppText.latestProjects.substring(7),
              ),
            ),
          ),
          ChangeNotifierProvider(
            create: (context) => ProjectProvider(),
            child: const Responsive(
              desktop: ProjectGridView(crossAxisCount: 3),
              extraLargeScreen: ProjectGridView(crossAxisCount: 4),
              largeMobile: ProjectGridView(crossAxisCount: 1, ratio: 1.8),
              mobile: ProjectGridView(crossAxisCount: 1, ratio: 1.5),
              tablet: ProjectGridView(crossAxisCount: 2, ratio: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
