import 'package:bw_week_one_e_commerce/view/home_screen/body/third_section/trending_item_list/trending_item_card/trending_item_card.dart';
import 'package:flutter/material.dart';

class TrendingItemList extends StatelessWidget {
  const TrendingItemList({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenSize.width/17,bottom: screenSize.width/17),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                TrendingItemCard(screenSize: screenSize),
                SizedBox(width: screenSize.width/12,),
                TrendingItemCard(screenSize: screenSize),
                SizedBox(width: screenSize.width/12,),
              ],
            ),
            SizedBox(height: screenSize.height/40,),
            Row(
              children: [
                TrendingItemCard(screenSize: screenSize),
                 SizedBox(width: screenSize.width/12,),
                TrendingItemCard(screenSize: screenSize),
                SizedBox(width: screenSize.width/12,),
              ],
            ),
          ],
        ),
      )
    );
  }
}