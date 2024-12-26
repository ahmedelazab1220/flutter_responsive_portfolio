import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.blackColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    useMaterial3: true,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.lexendDeca(color: AppColors.charcoalColor),
      bodyMedium: GoogleFonts.lexendDeca(color: AppColors.darkGrayColor),
      headlineLarge: GoogleFonts.inter(
        color: AppColors.charcoalColor,
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
      headlineMedium: GoogleFonts.k2d(
        color: AppColors.darkGrayColor,
        fontSize: 30,
      ),
      titleLarge: GoogleFonts.inter(
        color: AppColors.charcoalColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      titleMedium: GoogleFonts.inter(
        color: AppColors.charcoalColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      displayLarge: GoogleFonts.lexendDeca(
        color: AppColors.darkGrayColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lexendDeca(
        color: AppColors.charcoalColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.lexendDeca(
        color: AppColors.darkGrayColor,
        wordSpacing: 2,
        fontSize: 12,
      ),
      labelSmall: GoogleFonts.lexendDeca(
        color: AppColors.charcoalColor,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightGrayColor,
      hintStyle: GoogleFonts.lexendDeca(color: AppColors.darkGrayColor),
      labelStyle: GoogleFonts.lexendDeca(color: AppColors.charcoalColor),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkGrayColor,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.blueColor,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.pinkAccentColor,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.pinkAccentColor,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.blueColor,
      selectionColor: AppColors.blueColor.withOpacity(0.4),
      selectionHandleColor: AppColors.blueColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkAccentColor,
        foregroundColor: AppColors.whiteColor,
        textStyle: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );

  // Define dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.whiteColor,
    useMaterial3: true,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.lexendDeca(color: AppColors.lightGrayColor),
      bodyMedium: GoogleFonts.lexendDeca(color: AppColors.slatGrayColor),
      headlineLarge: GoogleFonts.inter(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
      headlineMedium: GoogleFonts.k2d(
        color: AppColors.grayColor,
        fontSize: 30,
      ),
      titleLarge: GoogleFonts.inter(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      titleMedium: GoogleFonts.inter(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      displayLarge: GoogleFonts.lexendDeca(
        color: AppColors.lightGrayColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.lexendDeca(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      displaySmall: GoogleFonts.lexendDeca(
        color: AppColors.grayColor,
        wordSpacing: 2,
        fontSize: 12,
      ),
      labelSmall: GoogleFonts.lexendDeca(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.charcoalColor,
      hintStyle: GoogleFonts.lexendDeca(color: AppColors.slatGrayColor),
      labelStyle: GoogleFonts.lexendDeca(color: AppColors.lightGrayColor),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.darkSlatGrayColor,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.brightBlueColor,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.brightRedColor,
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.brightRedColor,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.brightBlueColor,
      selectionColor: AppColors.brightBlueColor.withOpacity(0.4),
      selectionHandleColor: AppColors.brightBlueColor,
    ),
  );
}
