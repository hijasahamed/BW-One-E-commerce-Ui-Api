import 'package:bw_week_one_e_commerce/controllers/funtions.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bloc/bottom_navigation_bloc.dart';
import 'package:bw_week_one_e_commerce/view/home_screen/bottom_nav_bar/bottom_nav_bar_items/bottom_nav_bar_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.screenSize});

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      bloc: bottomNavigationRefreshBlocInstance,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
            color: Colors.white,
            child: SizedBox(
              height: screenSize.height * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BottomNavItems(
                    screenSize: screenSize,
                    image: 'assets/images/home nav grey.png',
                    selectedImage: 'assets/images/home nav green.png',
                    title: 'Home',
                    isSelected: selectedBottomNavIndex == 0,
                    onTap: () => onBottomNavItemTapped(0),
                  ),
                  BottomNavItems(
                    screenSize: screenSize,
                    image: 'assets/images/cart nav grey.png',
                    selectedImage: 'assets/images/cart nav green.png',
                    title: 'Cart',
                    isSelected: selectedBottomNavIndex == 1,
                    onTap: () => onBottomNavItemTapped(1),
                  ),
                  BottomNavItems(
                    screenSize: screenSize,
                    image: 'assets/images/myorder nav grey.png',
                    selectedImage: 'assets/images/myorder nav green.png',
                    title: 'My Order',
                    isSelected: selectedBottomNavIndex == 2,
                    onTap: () => onBottomNavItemTapped(2),
                  ),
                  BottomNavItems(
                    screenSize: screenSize,
                    image: 'assets/images/account nav grey.png',
                    selectedImage: 'assets/images/account nav green.png',
                    title: 'Account',
                    isSelected: selectedBottomNavIndex == 3,
                    onTap: () => onBottomNavItemTapped(3),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
