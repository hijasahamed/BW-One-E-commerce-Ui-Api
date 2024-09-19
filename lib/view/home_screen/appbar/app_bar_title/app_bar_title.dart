import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.place_sharp,size: screenSize.width/12,color: buttonGreenColor,),
        TextWidget(text: 'ABCD, New Delhi', color: textGreyColor, size: screenSize.width/25, weight: FontWeight.w600),
        Icon(Icons.keyboard_arrow_down,size: screenSize.width/10,color: buttonGreenColor,),
      ],
    );
  }
}