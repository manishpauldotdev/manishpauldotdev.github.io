import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:manishpauldotdev/utils/colors.dart';

class HighlightedBox extends StatelessWidget {
  final String imagePath;

  const HighlightedBox({
    super.key,
    required this.deviceHeight,
    required this.imagePath,
  });

  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.15,
      width: deviceHeight * 0.15,
      decoration: BoxDecoration(
        color: const Color(AppColors.boxColor),
        border: Border.all(
          width: 2,
          color: const Color(AppColors.borderColor),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
