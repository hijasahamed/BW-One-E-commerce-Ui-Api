import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/view/notifications_screen/notification_screen_appbar/notification_screen_appbar.dart';
import 'package:bw_week_one_e_commerce/view/notifications_screen/notification_screen_body/notification_screen_body.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key, required this.screenSize});
  
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbackgroundWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: NotificationScreenAppbar(screenSize: screenSize),
      ),
      body: NotificationScreenBody(screenSize: screenSize),
    );
  }
}