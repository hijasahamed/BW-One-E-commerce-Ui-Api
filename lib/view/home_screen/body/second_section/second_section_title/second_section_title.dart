import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';

class SecondSectionTitle extends StatelessWidget {
  const SecondSectionTitle({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenSize.width / 17,
        right: screenSize.width / 17,
        bottom: screenSize.width / 25,
      ),
      child: TextWidget(
          text: 'Top picks for you',
          color: textGreyColor,
          fontStyle: 'QuickSand',
          size: screenSize.width / 19,
          weight: FontWeight.bold),
    );
  }
}
