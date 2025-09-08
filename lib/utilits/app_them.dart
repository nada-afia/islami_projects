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
  static final ThemeData black = ThemeData(
       textTheme: TextTheme(
         headlineLarge: TextStyle(
           fontFamily: 'JannaLTBold',
           color: Colors.black,
           fontSize: 16,
         ),
       )
  );
  static final ThemeData whitethem16= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontFamily: 'JannaLTBold',
          color:  AppColors.white,
          fontSize: 16,
        ),
      ),
  );
  static final ThemeData darkblackthem20= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color: AppColors.pray,
        fontSize: 20,
      ),
    ),
  );
  static final ThemeData darkblackthem16= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color: AppColors.pray,
        fontSize: 16,
      ),
    ),
  );
  static final ThemeData whitethem14= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.white,
        fontSize: 14,
      ),
    ),
  );
  static final ThemeData whitethem24= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.white,
        fontSize: 24,
      ),
    ),
  );
  static final ThemeData whitethem32= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.white,
        fontSize: 32,
      ),
    ),
  );
  static final ThemeData whitethem20= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.white,
        fontSize: 20,
      ),
    ),
  );
}
