import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyThemeData {
  static final ThemeData theme = ThemeData(
    primaryColor: AppColors.blackColorBottom,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.yellowColor,
        unselectedItemColor: AppColors.whiteColor,
        showUnselectedLabels: true,
        backgroundColor: AppColors.blackColorBottom),
  );
}
