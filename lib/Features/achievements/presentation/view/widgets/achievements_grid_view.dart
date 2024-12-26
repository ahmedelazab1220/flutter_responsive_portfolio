import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/achievements_provider.dart';
import 'achievements_grid_view_body.dart';

class AchievementsGridView extends StatelessWidget {
  const AchievementsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.ratio = 1.3,
  });

  final int crossAxisCount;
  final double ratio;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AchievementsProvider>(context);
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: ratio,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AchievementsGridViewBody(index: index);
        },
        childCount: provider.achievementsList.length,
      ),
    );
  }
}
