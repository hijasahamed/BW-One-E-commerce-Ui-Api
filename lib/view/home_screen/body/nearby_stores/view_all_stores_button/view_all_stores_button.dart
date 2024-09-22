import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';

class ViewAllStoresButton extends StatelessWidget {
  const ViewAllStoresButton({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenSize.width/17,bottom: screenSize.width/15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenSize.width/50),
          color: referAndEarnColor,
        ),
        height: screenSize.height/19,
        width: screenSize.width/1.8,
        child: Center(child: TextWidget(text: 'View all stores', color: appbackgroundWhite, fontStyle: 'QuickSand', size: screenSize.width/25, weight: FontWeight.bold)),
      ),
    );
  }
}