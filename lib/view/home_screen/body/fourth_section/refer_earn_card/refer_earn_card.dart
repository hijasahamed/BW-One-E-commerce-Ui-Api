import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReferEarnCard extends StatelessWidget {
  const ReferEarnCard({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: screenSize.width / 19,
          left: screenSize.width / 19,
          bottom: screenSize.width / 11),
      child: Container(
        width: screenSize.width,
        height: screenSize.height / 8.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenSize.width / 50),
          color: referAndEarnColor,
        ),
        child: Stack(
          children: [
            Positioned(
              right: screenSize.width / 17,
              bottom: screenSize.width / 55,
              child: SvgPicture.asset(
                'assets/images/gift.svg',
                height: screenSize.height / 9.3,
              ),
            ),
            Positioned(
              left: screenSize.width/15,
              top: screenSize.width/15,
              child: TextWidget(
                  text: 'Refer & Earn',
                  color: appbackgroundWhite,
                  fontStyle: '',
                  size: screenSize.width / 20,
                  weight: FontWeight.bold),
            ),
            Positioned(
              left: screenSize.width/35,
              top: screenSize.width/7.5,
              child: Row(
                children: [
                  TextWidget(
                      text: 'Invite your friends & earn 15% off',
                      color: appbackgroundWhite,
                      fontStyle: 'QuickSand',
                      size: screenSize.width / 28,
                      weight: FontWeight.bold),
                  SizedBox(
                    width: screenSize.width / 60,
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: appbackgroundWhite,
                    size: screenSize.width / 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}