import 'package:flutter/material.dart';

import '../../../../Core/utils/colors.dart';
import 'widgets/achievements_body.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light
                ? AppColors.themeLight
                : AppColors.themeDark,
          ),
        ),
        child: const AchievementsBody(),
      ),
    );
  }
}
