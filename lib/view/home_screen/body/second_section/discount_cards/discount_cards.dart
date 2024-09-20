
import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class DiscountCards extends StatelessWidget {
  const DiscountCards({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height / 4.5,
      child: Padding(
        padding: EdgeInsets.only(left: screenSize.width / 17),
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                right: screenSize.width / 19,
              ),
              child: Container(
                width: screenSize.width / 1.15,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(screenSize.width / 100),
                  color: index == 0
                      ? buttonGreenColor
                      : const Color(0xFF685BCB),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: screenSize.width / 100,
                      child: Image.asset(
                        'assets/images/Figma_Resources_2-removebg-preview 1.png',
                      ),
                    ),
                    Positioned(
                      left: screenSize.width / 15,
                      top: screenSize.width / 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: screenSize.width / 4,
                              child: TextWidget(
                                text: 'DISCOUNT 25% ALL FRUITS',
                                color: appbackgroundWhite,
                                fontStyle: '',
                                size: screenSize.width / 25,
                                weight: FontWeight.bold,
                                maxline: true,
                              )),
                          SizedBox(
                            height: screenSize.height / 100,
                          ),
                          Container(
                            height: screenSize.height / 25,
                            width: screenSize.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    screenSize.width / 110),
                                color: Colors.orange),
                            child: Center(
                              child: TextWidget(
                                  text: 'CHECK NOW',
                                  color: appbackgroundWhite,
                                  fontStyle: '',
                                  size: screenSize.width / 30,
                                  weight: FontWeight.bold),
                            ),
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
