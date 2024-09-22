import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/appbar/app_bar_bottom/app_bar_bottom.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/appbar/app_bar_title/app_bar_title.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appbackgroundWhite,
      elevation: 0,
      title: AppBarTitle(screenSize: screenSize),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height/8), 
        child: AppBarBottom(screenSize: screenSize)
      ),
    );
  }
}



