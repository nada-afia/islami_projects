
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_project/islami/home_screen.dart';

import '../utilits/app_colors.dart';

class Content {
  String centerImage;
  String text1;
  String? text2;

  Content({
    required this.centerImage,
    required this.text1,
    this.text2,
  });
}

class Introductionscreen extends StatefulWidget {
  static String routename = 'intro';
  @override
  State<Introductionscreen> createState() => _IntroductionscreenState();
}

class _IntroductionscreenState extends State<Introductionscreen> {

  final List<Content> pages = [
    Content(centerImage: 'assets/images/center_image.png', text1: 'Welcome To Islmi App'),
    Content(centerImage: 'assets/images/kabba_image.png',
        text1: 'Welcome To Islami App'
        ,text2: 'We Are Very Excited To Have You In Our\nCommunity'),
    Content(centerImage: 'assets/images/kabba2_image.png',
        text1: 'Reading the Quran'
        ,text2:'Read, and your Lord is the Most Generous' ),
    Content(centerImage: 'assets/images/kabba3_image.png',
        text1: 'Bearish'
        ,text2: 'Praise the name of your Lord, the Most\nHigh'),
    Content(centerImage: 'assets/images/kabba4_image.png',
        text1: 'Holy Quran Radio',
        text2: 'You can listen to the Holy Quran Radio\nthrough the application for free and easily'),
  ];
  final introkey=GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introkey,
      pages: pages.map((page) {
        return PageViewModel(
          titleWidget: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset('assets/images/islmi_logo.png', width: 250),
            ],
          ),
          bodyWidget: Column(
            children: [
              const SizedBox(height: 35),
              Center(
                child: Image.asset(
                  page.centerImage,
                  width: 200,
                ),
              ),
              const SizedBox(height: 60),
              Text(
                page.text1,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18, color:AppColors.gold,fontWeight: FontWeight.bold),
              ),
              if (page.text2 != null && page.text2!.isNotEmpty) ...[
                const SizedBox(height: 20),
                Text(
                  page.text2!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.gold,fontWeight: FontWeight.bold),
                ),
              ],
            ],
          ),
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            pageColor: AppColors.black,
            imagePadding: EdgeInsets.zero,
          ),
        );
      }).toList(),
      showNextButton: true,
      globalBackgroundColor: AppColors.black,
      dotsDecorator: DotsDecorator(
        activeColor: AppColors.gold,
        color: Colors.grey,
      ),
      showBackButton: true,
      back: TextButton(onPressed: (){
        introkey.currentState?.previous();
      }, child: Text('Back',style: TextStyle(color: AppColors.gold))),
      next: TextButton(onPressed: (){
        introkey.currentState?.next();
      }, child: Text('Next',style: TextStyle(color: AppColors.gold))),
      done: const Text('Finish', style: TextStyle(color: AppColors.gold)),
      onDone: () {
        Navigator.of(context).pushNamed(HomeScreen.routename);
      },
    );
  }
}
