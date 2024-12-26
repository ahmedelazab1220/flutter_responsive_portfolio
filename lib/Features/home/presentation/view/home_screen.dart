import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../Core/utils/colors.dart';
import '../view_model/page_controller_provider.dart';
import 'widgets/drawer/custom_drawer.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light
                ? AppColors.themeLight
                : AppColors.themeDark,
          ),
        ),
        child: ChangeNotifierProvider(
          create: (context) => PageControllerProvider(),
          child: Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: const HomeBody(),
          ),
        ),
      ),
    );
  }
}
