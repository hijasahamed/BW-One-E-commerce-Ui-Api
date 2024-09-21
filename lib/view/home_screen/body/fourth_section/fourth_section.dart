import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/explore_card/explore_card.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/fourth_section_title/fourth_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourthSection extends StatelessWidget {
  const FourthSection({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FourthSectionTitle(screenSize: screenSize),
        ExploreCard(screenSize: screenSize),
        Padding(
          padding: EdgeInsets.only(right: screenSize.width/19,left: screenSize.width/19,bottom: screenSize.width/19),
          child: Container(
            width: screenSize.width,
            height: screenSize.height/8.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenSize.width/50),
              color: referAndEarnColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: screenSize.width / 100,
                  child: SvgPicture.asset(
                    'assets/images/gift.svg',
                    fit: BoxFit.cover,
                    width: screenSize.width / 8,   // Adjust the width as per your requirement
                    height: screenSize.width / 8,  // Adjust the height if necessary
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}



