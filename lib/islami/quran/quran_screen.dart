import 'package:flutter/material.dart';
import 'package:islami_project/islami/quran/most_recently.dart';
import 'package:islami_project/islami/quran/quran_resources.dart';
import 'package:islami_project/islami/quran/sura-item.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_routes.dart';
import 'package:islami_project/utilits/app_them.dart';
import 'package:islami_project/utilits/shared.dart';

import '../../utilits/app_images.dart';

class QuranScreen extends StatefulWidget {
    QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
      List<int>searchList=List.generate(114, (index) => index,);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppImages.islamilogo,
                  width: width * 0.67,
                  height: height * 0.18,
                ),
              ),
               TextField(
                 onChanged: (value) {
                     SearchByText(value);
                 },
                 style: TextStyle(color: Colors.white),
                 decoration: InputDecoration(
                   prefixIcon: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset(AppImages.quranicon),
                   ),
                   hintText: 'Sura Name',
                   hintStyle: Appthem.primarythem16.textTheme.headlineLarge,

                   filled: true,
                   fillColor: AppColors.blackbg,
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(16),
                     borderSide: BorderSide(
                       color: AppColors.gold,
                       width: 1,
                     ),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(16),
                     borderSide: BorderSide(
                       color: AppColors.gold,
                       width: 2,
                     ),
                   ),
                 ),
               ),
              SizedBox(height: height*0.02,),
               MostRecently(),
              SizedBox(height: height*0.02,),
              Text('Suras List',style: Appthem.primarythem16.textTheme.headlineLarge,),
              SizedBox(height: height*0.02,),
               Expanded(child: ListView.separated(
                   itemBuilder: (context, index) {
                    return InkWell(
                        onTap:() {
                          saveLastSura(searchList[index]);
                          Navigator.of(context).pushNamed(AppRoutes.suraDetails,
                              arguments: searchList[index]);
                        }
                        ,child: SuraItem(index: searchList[index]));
                   },
                   separatorBuilder: (BuildContext context, int index) {
                     return Divider(
                       color: AppColors.white,
                       indent: width*0.10,
                       endIndent: width*0.10,
                     );
                   },
                   itemCount:searchList.length))
            ],
          ),
        ),
      ),
    );
  }

  void SearchByText(String value) {
    List<int> searchResult=[];
    for(int i=0;i<QuranResources.englishQuranSurahs.length;i++){
      if(QuranResources.englishQuranSurahs[i].toLowerCase().contains((value))){
         searchResult.add(i);
      }
      if(QuranResources.arabicAuranSuras[i].toLowerCase().contains(value)){
        searchResult.add(i);
      }
      searchList=searchResult;
      setState(() {

      });
    }
  }
}
