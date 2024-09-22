import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/first_section/catogory_list/catogory_list.dart';
import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenSize.width/17, right: screenSize.width/17,top: screenSize.width/17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              text: 'What would you like to do today?',
              color: textGreyColor,
              fontStyle: 'QuickSand',
              size: screenSize.width / 19,
              weight: FontWeight.bold),
          CatogaryList(screenSize: screenSize),
          TextButton(
            onPressed: () {
              
            }, 
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(text: 'More', color: buttonGreenColor, fontStyle: 'QuickSand', size: screenSize.width/26, weight: FontWeight.bold),
              SizedBox(width: screenSize.width/100,),
              Icon(Icons.keyboard_arrow_down,color: buttonGreenColor,size: screenSize.width/12,)
            ],
          )
          )
        ],
      ),
    );
  }
}