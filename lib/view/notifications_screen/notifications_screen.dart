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
            List<String> dataList = notifications.map((notification) => notification.image).toList();
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 50, // Increased size for better visibility
                        width: 50,  // Adjust this based on your layout
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(dataList[index]),
                            fit: BoxFit.cover, // Ensure the image fits within the container
                            onError: (error, stackTrace) {
                              // Fallback if image loading fails
                              print("Image loading failed: $error");
                            },
                          ),
                        ),
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