 import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:islami_project/islami/hadeth/hadeth_item.dart';
import 'package:islami_project/utilits/app_colors.dart';

import '../../utilits/app_images.dart';

class HadethScreen extends StatelessWidget {
   const HadethScreen({super.key});

   @override
   Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;
     return Column(
       children: [
         Center(
           child :
           Image.asset(AppImages.islamilogo,width: width*0.67,height: height*0.18,),
         ),
         CarouselSlider(
           options: CarouselOptions(
               enlargeCenterPage: true,
               enlargeFactor: 0.3,
               height: height*0.66,

           ),
           items: List.generate(50, (index) => index+1,).map((i) {
             return Builder(
               builder: (BuildContext context) {
                 return Container(
                     width: MediaQuery.of(context).size.width,
                     margin: EdgeInsets.symmetric(horizontal: 5.0),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(16),
                         color: AppColors.gold
                     ),
                     child: HadethItem(index: i),
                 );

               },
             );

           }).toList(),

         )
       ],
     );
   }
 }
