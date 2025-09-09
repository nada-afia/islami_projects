import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_project/islami/quran/quran_resources.dart';
import 'package:islami_project/provider/most_recently_provider.dart';
import 'package:islami_project/utilits/shared.dart';
import 'package:provider/provider.dart';

import '../../utilits/app_colors.dart';
import '../../utilits/app_images.dart';
import '../../utilits/app_them.dart';

class MostRecently extends StatefulWidget {
    MostRecently({super.key});

  @override
  State<MostRecently> createState() => _MostRecentlyState();
}

class _MostRecentlyState extends State<MostRecently> {

   late MostRecentlyProvider mostRecentlyProvider;
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      mostRecentlyProvider.getLastSura();
    });

  }

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
      mostRecentlyProvider=Provider.of<MostRecentlyProvider>(context);
    return mostRecentlyProvider.mostRecentlyList.isEmpty?SizedBox(): Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Most Recently',
          style: Appthem.primarythem16.textTheme.headlineLarge,
        ),
        SizedBox(height: height*0.02,),
        SizedBox(
          height: height*0.18,
          child: ListView.separated(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: width*0.04),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.gold
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(QuranResources.englishQuranSurahs[mostRecentlyProvider.mostRecentlyList[index]],style: Appthem.black24.textTheme.headlineLarge,),
                          Text(QuranResources.arabicAuranSuras[mostRecentlyProvider.mostRecentlyList[index]],style: Appthem.black24.textTheme.headlineLarge),
                          Text('${QuranResources.versesNumber[mostRecentlyProvider.mostRecentlyList[index]]} Verses',style: Appthem.black14.textTheme.headlineLarge)
                        ],
                      ),
                      Image.asset(AppImages.quran)
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: width*0.02,),
              itemCount:mostRecentlyProvider.mostRecentlyList.length),
        ),
      ],
    );
  }
}
