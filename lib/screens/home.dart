import 'package:flutter/material.dart';

import 'package:manishpauldotdev/utils/colors.dart';
import 'package:manishpauldotdev/widgets/highlighted_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                                borderRadius: BorderRadius.circular(15)),
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
                      const Text(
                        'KOI AGAR "FLUTTER" BOLE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      const Text(
                        'AAP MANISH SAMAJH LENA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HighlightedBox(
                                  deviceHeight: deviceHeight,
                                  imagePath: 'assets/images/rocket.svg'),
                              SizedBox(
                                height: deviceHeight * 0.01,
                              ),
                              const Text(
                                'PROJECTS',
                                style: TextStyle(
                                  color: Color(
                                    AppColors.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HighlightedBox(
                                  deviceHeight: deviceHeight,
                                  imagePath: 'assets/images/review.svg'),
                              SizedBox(
                                height: deviceHeight * 0.01,
                              ),
                              const Text(
                                'REVIEWS',
                                style: TextStyle(
                                  color: Color(
                                    AppColors.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HighlightedBox(
                                  deviceHeight: deviceHeight,
                                  imagePath: 'assets/images/blog.svg'),
                              SizedBox(
                                height: deviceHeight * 0.01,
                              ),
                              const Text(
                                'BLOGS',
                                style: TextStyle(
                                  color: Color(
                                    AppColors.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HighlightedBox(
                                  deviceHeight: deviceHeight,
                                  imagePath: 'assets/images/contact.svg'),
                              SizedBox(
                                height: deviceHeight * 0.01,
                              ),
                              const Text(
                                'CONTACT',
                                style: TextStyle(
                                  color: Color(
                                    AppColors.textColor,
                                  ),
                                ),
                              ),
                            ],
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
