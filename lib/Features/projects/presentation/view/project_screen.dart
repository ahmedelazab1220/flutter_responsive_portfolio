import 'package:flutter/material.dart';
import '../../../../Core/utils/colors.dart';
import 'widgets/project_body.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
        child: const ProjectBody(),
      ),
    );
  }
}
