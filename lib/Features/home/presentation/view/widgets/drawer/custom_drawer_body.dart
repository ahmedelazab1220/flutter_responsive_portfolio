import 'package:flutter/material.dart';

import '../../../../../../Core/utils/colors.dart';
import 'custom_drawer_container_view.dart';

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? AppColors.themeLight
              : AppColors.themeDark,
        ),
      ),
      child: const CustomDrawerContainerView(),
    );
  }
}
