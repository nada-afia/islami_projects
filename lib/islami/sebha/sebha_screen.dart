import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_images.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SebhaScreen extends StatefulWidget{


  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count=0;
  AnimationController? sebhaController;
  int zekrIndex = 0;

  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height  = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold( body: Column(
        children: [
          Expanded(child: Column(children: [
      
            Image.asset(AppImages.islamilogo,width: width*0.67,height: height*0.18,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(color: AppColors.white,fontFamily: 'JannaLTBold',
                fontSize: 36,),),
            ),
            Center(child: Image.asset(AppImages.sebhaconst,
             width: width*0.33, height: height*0.09,
            )),
            GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                });
                if (count == 34) {
                  zekrIndex++;
                  count=0;
                  if (zekrIndex >= azkar.length) {
                    zekrIndex = 0;
                  }
                }
                sebhaController?.forward(from: 0);
              },
              child:
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(child: Image.asset(AppImages.sebhascreen,
                    width:width*0.88,
                    height:height*0.40,
                  )).animate(
                    onInit: (controller) => sebhaController = controller,
                    onPlay: (controller) async {
                      await controller.forward(from: 0);
                      await Future.delayed(200.ms);
                      controller.reverse();
                    },
                  ).rotate(
                    duration: 300.ms,
                    begin: 0,
                    end:0.1,
                    curve: Curves.easeOut,
                  ),
                  Column(
                    children: [
                      Text(azkar[zekrIndex],style: TextStyle(color: AppColors.white,fontFamily:'JannaLTBold',fontSize: 30 ),),
                      SizedBox(width: 50,),
                      Text('$count',style: TextStyle(color: AppColors.white,fontFamily:'JannaLTBold',fontSize: 30 ))
                    ],
                  ),
      
      
                ],
              ),)],
          ))
      
      ])),
    );
  }
}