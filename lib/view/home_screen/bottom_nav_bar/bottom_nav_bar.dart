import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bottom_nav_bar_items/bottom_nav_bar_items.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
   return Container(
      decoration: BoxDecoration(
        color: appbackgroundWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: BottomAppBar(
        color: appbackgroundWhite,
        child: SizedBox(
          height: screenSize.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BottomNavItems(screenSize: screenSize,image: 'assets/images/home nav green.png',title: 'Home',),
              BottomNavItems(screenSize: screenSize,image: 'assets/images/cart nav grey.png',title: 'Cart',),
              BottomNavItems(screenSize: screenSize,image: 'assets/images/myorder nav grey.png',title: 'My Order',),
              BottomNavItems(screenSize: screenSize,image: 'assets/images/account nav grey.png',title: 'Account',),
            ],
          ),
        ),
      ),
    );
  }
}

