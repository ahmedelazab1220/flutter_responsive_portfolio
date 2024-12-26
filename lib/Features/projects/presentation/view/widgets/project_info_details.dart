import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/utils/responsive.dart';
import '../../view_model/project_provider.dart';
import 'projects_links_github.dart';

class ProjectInfoDetails extends StatelessWidget {
  const ProjectInfoDetails({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProjectProvider>(context, listen: false);
    var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Text(
          provider.projectList[index].name,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: Responsive.getResponsiveValue(
                  context,
                  extraLargeScreen: 5.sp,
                  largeMobile: 10.sp,
                  desktop: 6.sp,
                ),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Text(
            provider.projectList[index].description,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: Responsive.getResponsiveValue(
                    context,
                    extraLargeScreen: 3.sp,
                    largeMobile: 11.sp,
                    desktop: 5.sp,
                  ),
                ),
            maxLines: size.width < 200
                ? 3
                : size.width < 750
                    ? 4
                    : (size.width > 900 && size.width < 1060)
                        ? 5
                        : size.width > 1600
                            ? 7
                            : 4,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Spacer(),
        size.width < 250
            ? const SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.only(
                  left: Responsive.getResponsiveValue(
                    context,
                    extraLargeScreen: 1.w,
                    largeMobile: 5.w,
                    desktop: 3.w,
                  ),
                ),
                child: ProjectsLinksGithub(
                  index: index,
                ),
              ),
      ],
    );
  }
}
