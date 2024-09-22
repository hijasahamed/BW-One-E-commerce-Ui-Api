import 'package:bw_week_one_e_commerce/controllers/api_calls.dart';
import 'package:bw_week_one_e_commerce/models/api_model.dart';
import 'package:bw_week_one_e_commerce/models/colors.dart';
import 'package:bw_week_one_e_commerce/models/textwidget.dart';
import 'package:bw_week_one_e_commerce/view/notifications_screen/notification_screen_appbar/notification_screen_appbar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key, required this.screenSize});
  final Size screenSize;

  // Function to format the timestamp
  String formatTimestamp(String timestamp) {
    final parsedDate = DateTime.parse(timestamp);
    final now = DateTime.now();
    final difference = now.difference(parsedDate);

    if (difference.inDays > 1) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays == 1) {
      return '1 day ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} mins ago';
    } else {
      return 'Just now';
    }
  }

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
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No notifications found'));
          } else {
            final notifications = snapshot.data!;
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.notifications),
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