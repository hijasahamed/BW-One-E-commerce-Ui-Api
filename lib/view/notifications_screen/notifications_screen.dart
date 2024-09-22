import 'package:bw_week_one_e_commerce/controllers/api_calls.dart';
import 'package:bw_week_one_e_commerce/model/colors.dart';
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
      body: FutureBuilder<List<dynamic>>(
        future: fetchNotifications(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading spinner while the data is being fetched
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Show an error message if the API call fails
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // Handle the case where no data is returned
            return const Center(child: Text('No notifications found'));
          } else {
            // Display the list of notifications
            final notifications = snapshot.data!;
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return ListTile(
                  title: Text(notification['title']),
                  subtitle: Text(notification['time']),
                  leading: Icon(Icons.notifications, color: Colors.green),
                );
              },
            );
          }
        },
      ),
    );
  }
}