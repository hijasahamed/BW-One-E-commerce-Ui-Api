import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenSize.width / 17,bottom: screenSize.width / 13),
      child: SizedBox(
        height: screenSize.height / 5.6,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: screenSize.width/19),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenSize.width/50),
                  color: sectionFourContainerColor,
                ),
                width: screenSize.width / 1.25,
                child: Stack(
                  children: [
                    Positioned(
                      right: screenSize.width / 100,
                      child: Image.asset(
                        'assets/images/fruits.png',fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: screenSize.width / 15,
                      top: screenSize.width / 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: screenSize.width / 2,
                              child: TextWidget(
                                text: 'Customer favourite top supermarkets',
                                color: appbackgroundWhite,
                                fontStyle: '',
                                size: screenSize.width / 19,
                                weight: FontWeight.bold,
                                maxline: true,
                              )),
                          SizedBox(
                            height: screenSize.height / 100,
                          ),
                          Row(
                            children: [
                              TextWidget(
                                  text: 'Explore',
                                  color: exploreButtonColor,
                                  fontStyle: '',
                                  size: screenSize.width / 30,
                                  weight: FontWeight.bold),
                                  Icon(Icons.arrow_forward_outlined,color: exploreButtonColor,size: screenSize.width/22,)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}