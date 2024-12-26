import 'package:flutter/material.dart';

abstract class AppColors {
  static const whiteColor = Colors.white;
  static const darkGrayColor = Color(0xFF242430);
  static const lightGrayColor = Color(0xFF8B8B8D);
  static const blackBlueColor = Color(0xFF000515);
  static const pinkColor = Colors.pink;
  static final blueShade900 = Colors.blue.shade900;
  static const pinkAccentColor = Colors.pinkAccent;
  static const blueColor = Colors.blue;
  static const blackColor = Colors.black;
  static const redColor = Colors.red;
  static const grayColor = Colors.grey;
  static const amberAccentColor = Colors.amberAccent;
  static const cyanAccentColor = Colors.cyanAccent;
  static const amberColor = Colors.amber;
  static const darkReddishColor = Color(0xFF150000);
  static const slatGrayColor = Color(0xFF6B7280);
  static const brightBlueColor = Color(0xFF3B82F6);
  static const brightRedColor = Color(0xFFEF4444);
  static const darkSlatGrayColor = Color(0xFF374151);
  static const charcoalColor = Color(0xFF121212);
  static const lightBlueColor = Color(0xFFB3E5FC);
  static const lightPinkColor = Color(0xFFFFC5D9);
  static const mintGreenColor = Color(0xFFA5D6A7);
  static const greenAccentColor = Colors.greenAccent;

  static final List<Color> gradientColors = [
    AppColors.pinkColor,
    AppColors.blueShade900,
  ];

  static final List<Color> themeLight = [
    AppColors.grayColor.withOpacity(0.5),
    AppColors.whiteColor,
  ];

  static final List<Color> themeDark = [
    AppColors.blackBlueColor,
    AppColors.blackBlueColor,
  ];

  static final List<Color> gradientColors2 = [
    AppColors.mintGreenColor.withOpacity(0.3),
    AppColors.grayColor.withOpacity(0.5),
  ];

  static final List<Color> gradientColors3 = [
    AppColors.pinkColor,
    AppColors.blueColor,
  ];

  static final List<Color> gradientColors4 = [
    AppColors.pinkColor,
    AppColors.cyanAccentColor,
  ];

  static final List<Color> gradientColors5 = [
    AppColors.blackBlueColor,
    AppColors.blackBlueColor,
    AppColors.blueShade900,
  ];
}
