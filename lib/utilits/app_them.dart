import 'package:flutter/material.dart';
import 'app_colors.dart';

class Appthem {
  static final ThemeData darkthem = ThemeData(
      canvasColor: AppColors.gold,
      scaffoldBackgroundColor: AppColors.transpert,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.black
      )
  );
}
