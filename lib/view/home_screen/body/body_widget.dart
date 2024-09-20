import 'package:bw_week_one_e_commerce/view/home_screen/body/first_section/first_section.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(screenSize.width/17),
        child: Column(
          children: [
            FirstSection(screenSize: screenSize,)
          ],
        ),
      ),
    );
  }
}