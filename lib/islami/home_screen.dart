import 'package:flutter/material.dart';
import 'package:islami_project/islami/Timer/timer_screen.dart';
import 'package:islami_project/islami/radio/radio_home.dart';
import 'package:islami_project/islami/radio/radio_screen.dart';
import 'package:islami_project/islami/sebha/sebha_screen.dart';
import '../utilits/app_colors.dart';
import '../utilits/app_images.dart';
import 'bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  static String routename = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedidex = 0;
  List<String> bg = [
    AppImages.quranbg,
    AppImages.hadethbg,
    AppImages.sebhabg,
    AppImages.radiobg,
    AppImages.timebg,

  ];
  final List<Widget> screens = [
    Center(child: Text("شاشة القرآن")),
    Center(child: Text("شاشة الحديث")),
    SebhaScreen(),
    RadioHome(),
    TimerScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          bg[selectedidex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold( body:
        screens[selectedidex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedidex,
            onTap: (index) {
              setState(() {
                selectedidex = index;
              });
            },
            items: [
              buildNavItem(
                bottom(index: 0, nameic: AppImages.quranic),
                'Quran',
              ),
              buildNavItem(
                bottom(index: 1, nameic: AppImages.hadethic),
                'Hadeth',
              ),
              buildNavItem(
                bottom(index: 2, nameic: AppImages.sebhaic),
                'Sebha',
              ),
              buildNavItem(
                bottom(index: 3, nameic: AppImages.radioic),
                'Radio',
              ),
              buildNavItem(bottom(index: 4, nameic: AppImages.timeic), 'Time',),

            ],
          ),
        ),
      ],
    );
  }

  Widget bottom({required int index, required String nameic}) {
    return selectedidex == index
        ? Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.blackbg,
      ),
      child: ImageIcon(AssetImage(nameic)),
    )
        : ImageIcon(AssetImage(nameic));
  }
}
