import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/appbar/app_bar_widget.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/body/body_widget.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final Size screenSize;

  const HomeScreen({super.key,required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appbackgroundWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenSize.height/6.5), 
        child: AppBarWidget(screenSize: screenSize,)
      ),
      body: BodyWidget(screenSize: screenSize,),
      bottomNavigationBar: BottomNavBar(screenSize: screenSize)
    );
  }
}