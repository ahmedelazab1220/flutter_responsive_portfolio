import 'package:flutter/material.dart';
import 'package:portfolio/Features/about/presentation/view/widgets/about_body.dart';

import '../../../../Core/utils/colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
        child: const AboutBody(),
      ),
    );
  }
}
