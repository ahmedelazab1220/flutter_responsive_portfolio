import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/utils/colors.dart';
import '../../../../../Core/utils/theme_provider.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return GestureDetector(
      onTap: () => themeProvider.toggleTheme(),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Container(
          key: ValueKey<bool>(themeProvider.isDarkTheme),
          width: 60.0,
          height: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkGrayColor.withOpacity(0.7)
                : AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 4.r,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(4.r),
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment: Theme.of(context).brightness == Brightness.dark
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Container(
                width: 22.0,
                height: 22.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.blackColor
                      : AppColors.whiteColor,
                ),
                child: Icon(
                  themeProvider.isDarkTheme
                      ? FontAwesomeIcons.moon
                      : FontAwesomeIcons.sun,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.lightBlueColor
                      : AppColors.blackBlueColor,
                  size: 14.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
