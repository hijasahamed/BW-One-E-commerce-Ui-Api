import 'package:bw_week_one_e_commerce/controllers/api_calls.dart';
import 'package:bw_week_one_e_commerce/controllers/funtions.dart';
import 'package:bw_week_one_e_commerce/models/api_model.dart';
import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:bw_week_one_e_commerce/view/notifications_screen/notification_screen_appbar/notification_screen_appbar.dart';
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
      body: FutureBuilder<List<NotificationsApiModel>>(
        future: fetchNotifications(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: buttonGreenColor,
                strokeWidth: 3,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: TextWidget(
                text: 'Error: ${snapshot.error}',
                color: nearbyStoreTextColor,
                fontStyle: 'QuickSand',
                size: screenSize.width / 25,
                weight: FontWeight.w500,
                maxline: true,
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: TextWidget(
                text: 'No notifications',
                color: nearbyStoreTextColor,
                fontStyle: 'QuickSand',
                size: screenSize.width / 25,
                weight: FontWeight.w500,
                maxline: true,
              ),
            );
          } else {
            final notifications = snapshot.data!;
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(bottom: screenSize.width/13),
                        child: Image.asset('assets/images/${notification.image}'),
                      ),
                      title: TextWidget(
                        text: notification.title,
                        color: textGreyColor,
                        fontStyle: 'QuickSand',
                        size: screenSize.width / 24,
                        weight: FontWeight.bold,
                        maxline: true,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: screenSize.width / 100),
                          TextWidget(
                            text: notification.body,
                            color: nearbyStoreTextColor,
                            fontStyle: 'QuickSand',
                            size: screenSize.width / 30,
                            weight: FontWeight.w500,
                            maxline: true,
                          ),
                          SizedBox(height: screenSize.width / 100),
                          TextWidget(
                            text: formatTimestamp(notification.timestamp),
                            color: nearbyStoreTextColor,
                            fontStyle: 'QuickSand',
                            size: screenSize.width / 34,
                            weight: FontWeight.w200,
                            maxline: true,
                          ),
                        ],
                      ),
                    ),
                    Divider(color: dividerColor,thickness: screenSize.width/500,)
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}