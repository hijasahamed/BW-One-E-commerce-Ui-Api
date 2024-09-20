import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';

class ThirdSection extends StatelessWidget {
  const ThirdSection({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: screenSize.width / 17,
            right: screenSize.width / 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextWidget(text: 'Trending', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width / 19, weight: FontWeight.bold),
              TextButton(
                onPressed: () {
                  
                }, 
                child: TextWidget(text: 'See all', color: buttonGreenColor, fontStyle: 'QuickSand', size: screenSize.width / 25, weight: FontWeight.bold)
              )
            ],
          ),
        ),
        Container(
          height: 300,
          width: screenSize.width,
          color: Colors.yellow,
        )
      ],
    );
  }
}