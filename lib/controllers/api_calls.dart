import 'dart:convert';
import 'package:bw_week_one_e_commerce/models/api_model.dart';
import 'package:http/http.dart' as http;

Future<List<NotificationsApiModel>> fetchNotifications() async {
  const url = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final List notificationsData = jsonData['data'];
    return notificationsData.map((json) => NotificationsApiModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load notifications');
  }
}
