import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class BottomNavItems extends StatelessWidget {
  const BottomNavItems({
    super.key,
    required this.screenSize,
    required this.image,
    required this.title
  });

  final Size screenSize;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(image,fit: BoxFit.cover,filterQuality: FilterQuality.high,height: screenSize.width/15,),
          SizedBox(height: screenSize.width/150,),
          TextWidget(text: title, color: bottomNavColor, fontStyle: 'QuickSand', size: screenSize.width/28, weight: FontWeight.bold),
        ],
      ),
    );
  }
}