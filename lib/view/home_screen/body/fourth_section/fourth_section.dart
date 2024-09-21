import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/explore_card/explore_card.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/fourth_section_title/fourth_section_title.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/refer_earn_card/refer_earn_card.dart';
import 'package:flutter/material.dart';

class FourthSection extends StatelessWidget {
  const FourthSection({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FourthSectionTitle(screenSize: screenSize),
        ExploreCard(screenSize: screenSize),
        ReferEarnCard(screenSize: screenSize)
      ],
    );
  }
}

