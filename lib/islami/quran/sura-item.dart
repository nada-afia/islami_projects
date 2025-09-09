import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:islami_project/islami/quran/quran_resources.dart';
import '../../utilits/app_colors.dart';
import '../../utilits/app_images.dart';
import '../../utilits/app_them.dart';

class SuraItem extends StatelessWidget {
  int index;
   SuraItem({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
    children: [
    Stack(
    alignment: Alignment.center,
    children: [
    Image.asset(AppImages.suranum),
    Text('${index+1}',style: Appthem.whitethem20.textTheme.headlineLarge,),
    ],
    ),
    SizedBox(width: width*0.04,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(QuranResources.englishQuranSurahs[index],style: Appthem.whitethem20.textTheme.headlineLarge,),
    Text('${QuranResources.versesNumber[index]} Verses',style: Appthem.whitethem14.textTheme.headlineLarge),
    ],
    ),
    Spacer(),
    Text(QuranResources.arabicAuranSuras[index],style: Appthem.whitethem20.textTheme.headlineLarge),
    ],
    );
  }
}
