import 'package:flutter/material.dart';
import 'package:islami_project/utilits/app_colors.dart';
import 'package:islami_project/utilits/app_them.dart';
import '../../utilits/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PrayerTime {
  final String name;
  final String time;
  final String time2;

  PrayerTime({required this.name, required this.time, required this.time2});
}

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int currentIndex = 0;

  final List<PrayerTime> prayerTimes = [
    PrayerTime(name: "Fajr", time: "04:25", time2: 'AM'),
    PrayerTime(name: "Dhuhr", time: "01:01", time2: 'PM'),
    PrayerTime(name: "ASR", time: "04:38", time2: 'PM'),
    PrayerTime(name: "Maghrib", time: "07:57", time2: 'PM'),
    PrayerTime(name: "Isha", time: "09:57", time2: 'PM'),
    PrayerTime(name: "Sunrise", time: "01:04", time2: 'PM'),
    PrayerTime(name: "Isha", time: "09:57", time2: 'PM'),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
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
                Center(
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.darkgold,
                      image: DecorationImage(
                        image: AssetImage(AppImages.praybg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '16 Jul,\n2024',
                                style: Appthem.whitethem16.textTheme.headlineLarge,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'PrayTime',
                                    style: Appthem.darkblackthem20.textTheme.headlineLarge,
                                  ),
                                  Text(
                                    'Tuesday',
                                    style: Appthem.black.textTheme.headlineLarge,
                                  ),
                                ],
                              ),
                              Text(
                                '09 Muh,\n1446',
                                style: Appthem.whitethem16.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: height * 0.10,
                          left: 0,
                          right: 0,
                          child: CarouselSlider.builder(
                            itemCount: prayerTimes.length,
                            itemBuilder: (BuildContext context, int index, int realIndex) {
                              final bool isCenter = index == currentIndex;
                              return buildPrayTime(prayerTimes[index], width, height, isCenter: isCenter);
                            },
                            options: CarouselOptions(
                              enlargeCenterPage: true,
                              viewportFraction: 0.25,
                              enlargeFactor: 0.15,
                              height: height * 0.15,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next Pray - 02:32',
                                style: Appthem.darkblackthem16.textTheme.headlineLarge,
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.volume_off),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Azkar',
                    style: Appthem.whitethem16.textTheme.headlineLarge,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.43,
                      height: height * 0.27,
                      margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.gold,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImages.evening,
                            width: width * 0.42,
                            height: height * 0.19,
                          ),
                          Text(
                            'Evening Azkar',
                            style: Appthem.whitethem20.textTheme.headlineLarge,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: width * 0.43,
                      height: height * 0.27,
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.gold,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImages.morning,
                            width: width * 0.42,
                            height: height * 0.19,
                          ),
                          Text(
                            'Morning Azkar',
                            style: Appthem.whitethem20.textTheme.headlineLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildPrayTime(PrayerTime prayer, double width, double height, {bool isCenter = false}) {
    return Container(
      width: isCenter ? width * 0.24 : width * 0.2,
      height: isCenter ? height * 0.13 : height * 0.11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF202020),
            const Color(0xFFB19768),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            prayer.name,
            style: isCenter
                ? Appthem.whitethem16.textTheme.headlineLarge
                : Appthem.whitethem14.textTheme.headlineLarge,
          ),
          SizedBox(height: 8),
          Text(
            prayer.time,
            style: isCenter
                ? Appthem.whitethem32.textTheme.headlineLarge
                : Appthem.whitethem24.textTheme.headlineLarge,
          ),
          Text(
            prayer.time2,
            style: isCenter
                ? Appthem.whitethem16.textTheme.headlineLarge
                : Appthem.whitethem14.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
