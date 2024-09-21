import 'package:bw_week_one_e_commerce/view/home_screen/body/third_section/third_section_title/third_section_title.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/third_section/trending_item_list/trending_item_list.dart';
import 'package:flutter/material.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThirdSectionTitle(screenSize: screenSize),
        TrendingItemList(screenSize: screenSize)
      ],
    );
  }
}