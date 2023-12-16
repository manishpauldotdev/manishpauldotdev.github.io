import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:manishpauldotdev/utils/colors.dart';
import 'package:manishpauldotdev/utils/scale_text.dart';
import 'package:manishpauldotdev/widgets/hover.dart';
import 'package:manishpauldotdev/widgets/option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color(AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                SizedBox(
                  width: deviceWidth * 0.29,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        right: 10,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: deviceWidth * 0.15,
                            height: deviceHeight * 0.4,
                            decoration: BoxDecoration(
                              color: const Color(
                                  AppColors.sideMenuBackgroundColor),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: deviceWidth * 0.24,
                        height: deviceHeight * 0.5,
                        decoration: BoxDecoration(
                          color: const Color(AppColors.imageBackgroundColor),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                SizedBox(
                  width: deviceWidth * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'KOI AGAR "FLUTTER" BOLE',
                        textScaler: TextScaler.linear(
                          ScaleText.textScaleFactor(context),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'AAP MANISH SAMAJH LENA',
                            textScaler: TextScaler.linear(
                              ScaleText.textScaleFactor(context),
                            ),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset(
                            'assets/images/smile-emoji.svg',
                            width: 35,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Hover(
                            child: Option(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/images/rocket.svg',
                              optionName: 'PROJECTS',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Hover(
                            child: Option(
                                deviceHeight: deviceHeight,
                                imagePath: 'assets/images/review.svg',
                                optionName: 'REVIEWS'),
                          ),
                          const SizedBox(width: 20),
                          Hover(
                            child: Option(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/images/blog.svg',
                              optionName: 'BLOGS',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Hover(
                            child: Option(
                              deviceHeight: deviceHeight,
                              imagePath: 'assets/images/contact.svg',
                              optionName: 'CONTACT',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
