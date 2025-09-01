import 'package:flutter/material.dart';
import 'package:islami_project/islami/Introduction_Screen.dart';
import 'package:islami_project/islami/home_screen.dart';
import 'package:islami_project/utilts/appthem.dart';

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
        initialRoute: Introductionscreen.routename,
        routes:
        {HomeScreen.routename:(context)=>HomeScreen(),
          Introductionscreen.routename :(context)=>Introductionscreen()
        });

  }

}
