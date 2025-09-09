import 'package:flutter/material.dart';
import 'package:islami_project/islami/quran/sura-item.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_routes.dart';
import 'package:islami_project/utilits/app_them.dart';

import '../../utilits/app_images.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

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
                              Text('Al-Anbiya',style: Appthem.black24.textTheme.headlineLarge,),
                              Text('الأنبياء',style: Appthem.black24.textTheme.headlineLarge),
                              Text('112 Verses',style: Appthem.black14.textTheme.headlineLarge)
                            ],
                          ),
                            Image.asset(AppImages.quran)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: width*0.02,),
                    itemCount: 10),
              ),
              SizedBox(height: height*0.02,),
              Text('Suras List',style: Appthem.primarythem16.textTheme.headlineLarge,),
              SizedBox(height: height*0.02,),
               Expanded(child: ListView.separated(
                   itemBuilder: (context, index) {
                    return InkWell(
                        onTap:() {
                          Navigator.of(context).pushNamed(AppRoutes.suraDetails,arguments: index);
                        }
                        ,child: SuraItem(index: index));
                   },
                   separatorBuilder: (BuildContext context, int index) {
                     return Divider(
                       color: AppColors.white,
                       indent: width*0.10,
                       endIndent: width*0.10,
                     );
                   },
                   itemCount:114))
            ],
          ),
        ),
      ),
    );
  }
}
