import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.screenSize,
    required this.icon,
    required this.title,
    required this.discount,
  });

  final Size screenSize;
  final String icon;
  final String title;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: appbackgroundWhite,
          elevation: 3,
          child: SizedBox(
            height: screenSize.width / 5.5,
            width: screenSize.width / 5.5,
            child: Stack(
              children: [
                Center(child: Image.asset(icon, height: 50)),
                if (discount.isNotEmpty)
                  Positioned(
                      top: screenSize.width / 150,
                      right: screenSize.width / 150,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenSize.width / 80),
                            color: offerContainerColor),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: screenSize.width / 50,
                              right: screenSize.width / 50,
                              top: screenSize.width / 210,
                              bottom: screenSize.width / 210),
                          child: TextWidget(
                              text: discount,
                              color: appbackgroundWhite,
                              fontStyle: 'QuickSand',
                              size: screenSize.width / 45,
                              weight: FontWeight.bold),
                        ),
                      )),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextWidget(
              text: title,
              color: textGreyColor,
              fontStyle: 'QuickSand',
              size: screenSize.width / 25,
              weight: FontWeight.bold,
              maxline: true,
              alignTextCenter: true,
            )),
      ],
    );
  }
}