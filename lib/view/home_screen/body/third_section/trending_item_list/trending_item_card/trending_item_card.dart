import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class TrendingItemCard extends StatelessWidget {
  const TrendingItemCard({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: screenSize.width/5.4,
          height: screenSize.width/4.9,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('assets/images/TLD6iCOlyb0.png'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(screenSize.width/75)
          ),
        ),
        SizedBox(width: screenSize.width/30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(text: 'Mithas Bhandar', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/22, weight: FontWeight.bold),
            TextWidget(text: 'Sweets, North Indian', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/31, weight: FontWeight.bold),
            TextWidget(text: '(store location) | 6.4 kms', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/31, weight: FontWeight.bold),
            Row(
              children: [
                Icon(Icons.star,color: textGreyColor,size: screenSize.width/29,),
                SizedBox(width: screenSize.width/50,),
                TextWidget(text: '4.1 | 45 mins', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/31, weight: FontWeight.bold),
              ],
            ),
          ],
        )
      ],
    );
  }
}