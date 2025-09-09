import 'package:flutter/material.dart';
import 'package:islami_project/islami/home_screen.dart';
import 'package:islami_project/islami/quran/sura_details.dart';
import 'package:islami_project/islami/radio/Reciters_Screen.dart';
import 'package:islami_project/islami/radio/radio_screen.dart';
import 'package:islami_project/utilits/app_routes.dart';
import 'package:islami_project/utilits/app_them.dart';

import 'islami/introduction_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Appthem.darkthem,
        debugShowCheckedModeBanner: false,
        home: Introductionscreen(),
        initialRoute: AppRoutes.introductionScreen,
        routes:
        {AppRoutes.routeName:(context)=>HomeScreen(),
          AppRoutes.introductionScreen :(context)=>Introductionscreen(),
          AppRoutes.suraDetails :(context)=>SuraDetails(),

        });

  }

}
