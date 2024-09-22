import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: appbackgroundWhite,
    );
  }
}