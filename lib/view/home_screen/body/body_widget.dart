import 'package:bw_week_one_e_commerce/view/home_screen/body/nearby_stores/nearby_stores.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/first_section/first_section.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/fourth_section/fourth_section.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/second_section/second_section.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/third_section/third_section.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstSection(screenSize: screenSize,),
          SecondSection(screenSize: screenSize),
          ThirdSection(screenSize: screenSize),
          FourthSection(screenSize: screenSize),
          NearbyStores(screenSize: screenSize),
        ],
      ),
    );
  }
}