import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/constants/color.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(color: AppColors.primaryColor,centerTitle: true),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,

      unselectedItemColor: AppColors.graylightColor,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryColor,
      selectedItemColor: AppColors.goldColor,
      
      // selectedIconTheme: IconThemeData(color: AppColors.blackColor),
      // selectedLabelStyle: TextStyle(
      //   color: AppColors.blackColor,
      // ),
      showUnselectedLabels: true,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.whiteColor,
      ),
      titleSmall: GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.grayColor,
      ),

      //navigation

      bodyMedium: const TextStyle(
        fontFamily: "GothamBold",
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: AppColors.graylightColor,
      ),
      // Description
      bodySmall: const TextStyle(
        fontFamily: "GothamLight",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.describtionColor,
      ),

      // App Bar - Browse Category title
      
      labelLarge: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: "SegoeUI",
        color: AppColors.whiteColor,
      ),
    ),
  );
}
