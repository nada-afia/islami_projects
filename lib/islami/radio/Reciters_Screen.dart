import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilits/app_colors.dart';
import '../../utilits/app_images.dart';
import '../../utilits/app_them.dart';

class RecitersScreen extends StatelessWidget {
   RecitersScreen({super.key});
    bool play=false;
    bool mute=false;
    final List<String> radios =['Ibrahim Al-Akdar', 'Akram Alalaqmi','Majed Al-Enezi', 'Malik shaibat Alhamed'];

    @override
    Widget build(BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height  = MediaQuery.of(context).size.height;

      return SafeArea(
        child: Container(
          color: AppColors.black,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: radios.length,
            itemBuilder:(BuildContext context, int index) {
              return Container(
                  width: width*0.90,
                  height: height*0.14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.gold
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(AppImages.radioback,width:width*0.91,height: height*0.10,fit: BoxFit.cover,),
                      Positioned(
                        top: 10,
                        child: Column(
                          children: [
                            Text(radios[index],style: Appthem.black20.textTheme.headlineLarge,),
                            SizedBox(height: 30,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){}, icon:Icon(play ? CupertinoIcons.pause_solid
                                    : CupertinoIcons.play_arrow_solid,
                                  color: AppColors.black,))
                                ,SizedBox(width: 10,),
                                IconButton(onPressed: (){}, icon:Icon(mute ? CupertinoIcons.volume_up
                                    : CupertinoIcons.volume_off
                                  ,color: AppColors.black,))

                              ],)

                          ],
                        ),
                      ),
                    ],
                  )
              );
            }, separatorBuilder: (BuildContext context, int index) {  return SizedBox(height: 15,); },
          ),
        ),
      );
    }
  }
