import 'package:flutter/material.dart';
import 'app_colors.dart';

class Appthem {
  static final ThemeData darkthem = ThemeData(
      canvasColor: AppColors.gold,
      scaffoldBackgroundColor: AppColors.transpert,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.black
      ),
    appBarTheme: AppBarTheme(
      color: AppColors.black,
      centerTitle: true,
        iconTheme: IconThemeData(
        color: AppColors.gold
    )
    )
  );
  static final ThemeData black16 = ThemeData(
       textTheme: TextTheme(
         headlineLarge: TextStyle(
           fontFamily: 'JannaLTBold',
           color: Colors.black,
           fontSize: 16,
         ),
       )
  );
  static final ThemeData black24 = ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'JannaLTBold',
          color: Colors.black,
          fontSize: 24,
        ),
      )
  );
  static final ThemeData black14 = ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'JannaLTBold',
          color: Colors.black,
          fontSize: 14,
        ),
      )
  );
  static final ThemeData black20 = ThemeData(
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'JannaLTBold',
          color: Colors.black,
          fontSize: 20,
        ),
      )
  );

  static final ThemeData primarythem16= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.primary,
        fontSize: 16,
      ),
    ),
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
  static final ThemeData whitethem12= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.white,
        fontSize: 12,
      ),
    ),
  );
  static final ThemeData goldthem20= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.gold,
        fontSize: 20,
      ),
    ),
  );
  static final ThemeData goldthem24= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.gold,
        fontSize: 24,
      ),
    ),
  );
  static final ThemeData goldthem16= ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'JannaLTBold',
        color:  AppColors.gold,
        fontSize: 16,
      ),
    ),
  );

}
