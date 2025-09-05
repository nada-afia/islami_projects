import 'package:flutter/material.dart';
import 'package:islami_project/islami/sebha/sebha.dart';
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
    SebhaScreen(), // 👈 شاشة السبحة
    Center(child: Text("شاشة الراديو")),
    Center(child: Text("شاشة الوقت")),
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
                'quran',
              ),
              buildNavItem(
                bottom(index: 1, nameic: AppImages.hadethic),
                'hadeth',
              ),
              buildNavItem(
                bottom(index: 2, nameic: AppImages.sebhaic),
                'sebha',
              ),
              buildNavItem(
                bottom(index: 3, nameic: AppImages.radioic),
                'radio',
              ),
              buildNavItem(bottom(index: 4, nameic: AppImages.timeic), 'time'),

            ],
          ),
        ),
      ],
    );
  }

  Widget bottom({required int index, required String nameic}) {
    return selectedidex == index
        ? Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: AppColors.black,
      ),
      child: ImageIcon(AssetImage(nameic)),
    )
        : ImageIcon(AssetImage(nameic));
  }
}
