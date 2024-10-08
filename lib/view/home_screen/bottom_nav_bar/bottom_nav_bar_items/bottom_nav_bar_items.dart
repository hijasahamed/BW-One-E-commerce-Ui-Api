import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';

class BottomNavItems extends StatelessWidget {
  const BottomNavItems({
    super.key,
    required this.screenSize,
    required this.image,
    required this.selectedImage,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final Size screenSize;
  final String image;
  final String selectedImage;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              isSelected ? selectedImage : image,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: screenSize.width / 15,
            ),
            SizedBox(height: screenSize.width / 150),
            TextWidget(text: title, color: bottomNavColor, fontStyle: 'QuickSand', size: screenSize.width / 28, weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}