import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreenAppbar extends StatelessWidget {
  const NotificationScreenAppbar({
    super.key,
    required this.screenSize,
  });

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
            blurRadius: 6,
            offset: const Offset(0, .1),
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: appbackgroundWhite,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: EdgeInsets.all(screenSize.width / 35),
            child: SvgPicture.asset(
              'assets/images/green back button.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: TextWidget(
          text: 'Notifications',
          color: textGreyColor,
          fontStyle: 'QuickSand',
          size: screenSize.width / 19,
          weight: FontWeight.bold,
        ),
      ),
    );
  }
}