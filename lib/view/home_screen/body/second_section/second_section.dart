import 'package:bw_week_one_e_commerce/view/home_screen/body/second_section/discount_cards/discount_cards.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/second_section/second_section_title/second_section_title.dart';
import 'package:flutter/material.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SecondSectionTitle(screenSize: screenSize),
        SizedBox(
          height: screenSize.height / 120,
        ),
        DiscountCards(screenSize: screenSize)
      ],
    );
  }
}
