import 'package:bw_week_one_e_commerce/model/colors.dart';
import 'package:bw_week_one_e_commerce/model/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key,required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbackgroundWhite,
      appBar: AppBar(
        backgroundColor: appbackgroundWhite,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Padding(
            padding: EdgeInsets.all(screenSize.width/35),
            child: SvgPicture.asset('assets/images/green back button.svg',fit: BoxFit.cover,),
          ),
        ),
        title: TextWidget(text: 'Notifications', color: textGreyColor, fontStyle: 'QuickSand', size: screenSize.width/19, weight: FontWeight.bold),
      ),
      body: const Center(child: Text('Notifications'),),
    );
  }
}