import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../view_model/project_provider.dart';
import 'project_grid_view_body.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
  });

  final int crossAxisCount;
  final double ratio;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProjectProvider>(context);
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ProjectGridViewBody(index: index);
        },
        childCount: provider.projectList.length,
      ),
    );
  }
}
