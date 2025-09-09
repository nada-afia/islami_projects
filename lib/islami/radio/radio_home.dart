
import 'package:flutter/material.dart';
import 'package:islami_project/islami/radio/Reciters_Screen.dart';
import 'package:islami_project/islami/radio/radio_screen.dart';
import '../../utilits/app_colors.dart';
import '../../utilits/app_images.dart';

class RadioHome extends StatefulWidget {
  const RadioHome({super.key});

  @override
  State<RadioHome> createState() => _RadioHomeState();
}

class _RadioHomeState extends State<RadioHome> {
  bool clickedRadio=false;
  bool clickedReciters=false;
  @override
  void initState() {
    super.initState();
    clickedRadio = true;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height  = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child :
              Image.asset(AppImages.islamilogo,width: width*0.67,height: height*0.18,),
            ),
            Container(
              width: width*0.90,
              height: height*0.04,
      
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blackbg,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          clickedRadio = true;
                          clickedReciters = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: clickedRadio ? AppColors.gold : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Radio",
                            style: TextStyle(color: clickedRadio ? AppColors.black : AppColors.white,fontFamily: 'JannaLTBold',fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          clickedReciters = true;
                          clickedRadio = false;
      
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: clickedReciters ? AppColors.gold : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            "Reciters",
                            style: TextStyle( color: clickedRadio ? AppColors.white : AppColors.black,fontFamily: 'JannaLTBold',fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        SizedBox(height: 20,),
            Expanded(
              child: content(),
            ),
          ],),
      ),
    );

  }
  Widget content() =>
      clickedRadio ? RadioScreen() : RecitersScreen();

}
