import 'package:flutter/material.dart';

import 'package:manishpauldotdev/utils/colors.dart';
import 'package:manishpauldotdev/widgets/highlighted_box.dart';

class Option extends StatelessWidget {
  final String imagePath;
  final String optionName;
  final double deviceHeight;

  const Option({
    super.key,
    required this.deviceHeight,
    required this.imagePath,
    required this.optionName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HighlightedBox(
          deviceHeight: deviceHeight,
          imagePath: imagePath,
        ),
        SizedBox(
          height: deviceHeight * 0.01,
        ),
        Text(
          optionName,
          style: const TextStyle(
            color: Color(
              AppColors.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
