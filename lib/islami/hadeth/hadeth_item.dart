import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_images.dart';
import 'package:islami_project/utilits/app_them.dart';
class Hadeth{
  String title;
  String content;
  Hadeth({required this.title,required this.content});
}
class HadethItem extends StatefulWidget {
  int index;

  HadethItem({super.key,required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth?hadeth;
 @override
 void initState(){
    super.initState();
  readHadethFile();

 }
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return  Container(padding: EdgeInsets.symmetric(vertical:height*0.04 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.gold,
          image:  DecorationImage(image: AssetImage(AppImages.hadethBackground))
      ),
      child: hadeth==null? CircularProgressIndicator(
        color: AppColors.gold,
      ):SingleChildScrollView(
        child: Column(
          children: [
             Text(hadeth!.title,style: Appthem.black24.textTheme.headlineLarge,),

            Padding(
              padding: EdgeInsets.symmetric(vertical: height*0.03,horizontal: width*0.04),
              child: Text(hadeth!.content,style: Appthem.black16.textTheme.headlineLarge,textAlign: TextAlign.center,),
            ),
          ],
        ),
      )
      ,
    );
  }

  Future<void> readHadethFile() async {
    String fileContent= await rootBundle.loadString('assets/files/hadeth/h${widget.index}.txt');
    String title =fileContent.substring(0,fileContent.indexOf('\n'));
    String content = fileContent.substring(fileContent.indexOf('\n')+1);
    hadeth =Hadeth(title: title, content: content);
    setState(() {

    });


  }
}
