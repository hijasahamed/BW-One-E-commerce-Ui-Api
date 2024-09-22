import 'dart:convert';
import 'package:bw_week_one_e_commerce/models/api_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

// Future<List<NotificationsApiModel>> fetchNotifications() async {
//   const url = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
//   final response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     final jsonData = json.decode(response.body);
//     final List notificationsData = jsonData['data'];
//     return notificationsData.map((json) => NotificationsApiModel.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load notifications');
//   }
// }

// Future<List<NotificationsApiModel>> fetchNotifications() async {
//   const url =
//       'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
//   final response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     final jsonData = json.decode(response.body);
//     final List notificationsData = jsonData['data'];

//     // Convert the raw JSON to a list of NotificationsApiModel objects
//     List<NotificationsApiModel> notificationsList = notificationsData
//         .map((json) => NotificationsApiModel.fromJson(json))
//         .toList();

//     // Sort the list by timestamp (latest first)
//     notificationsList.sort((a, b) =>
//         DateTime.parse(b.timestamp).compareTo(DateTime.parse(a.timestamp)));

//     return notificationsList;
//   } else {
//     throw Exception('Failed to load notifications');
//   }
// }


List<NotificationsApiModel> sortNotificationsInIsolate(List<NotificationsApiModel> notifications) {
  notifications.sort((a, b) => DateTime.parse(b.timestamp).compareTo(DateTime.parse(a.timestamp)));
  return notifications;
}


Future<List<NotificationsApiModel>> fetchNotifications() async {
  const url = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final List notificationsData = jsonData['data'];

    // Convert the raw JSON to a list of NotificationsApiModel objects
    List<NotificationsApiModel> notificationsList = notificationsData
        .map((json) => NotificationsApiModel.fromJson(json))
        .toList();

    // Use isolate to sort the notifications (offload sorting task)
    return await compute(sortNotificationsInIsolate, notificationsList);
  } else {
    throw Exception('Failed to load notifications');
  }
}
