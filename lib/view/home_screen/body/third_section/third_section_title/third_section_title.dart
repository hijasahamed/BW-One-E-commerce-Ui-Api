import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class ThirdSectionTitle extends StatelessWidget {
  const ThirdSectionTitle({
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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(text: 'Trending', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 19, weight: FontWeight.bold),
          TextButton(
            onPressed: () {}, 
            child: TextWidget(text: 'See all', color: buttonGreenColor, fontStyle: 'QuickSand', size: screenSize.width / 25, weight: FontWeight.bold)
          )
        ],
      ),
    );
  }
}