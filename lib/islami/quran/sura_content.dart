import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_them.dart';

import '../../provider/most_recently_provider.dart';

class SuraContent extends StatefulWidget {
  String content;
  int index;
  SuraContent({super.key,required this.content,required this.index});
  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  bool isClicked=false;

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        setState(() {
          isClicked=!isClicked;
        });
      },
      child: Container(
          width: width*0.91 ,
          padding: EdgeInsets.symmetric(vertical: height*0.02),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: isClicked ? AppColors.gold:AppColors.transpert,
              border: Border.all(
                  color: AppColors.gold,
                  width: 2
              )
          ),
          child: Text('${widget.content} [${widget.index+1}]',
            textDirection:TextDirection.rtl,
            textAlign: TextAlign.center,
            style: isClicked?Appthem.black20.textTheme.headlineLarge:Appthem.goldthem20.textTheme.headlineLarge,)),
    );
  }
}