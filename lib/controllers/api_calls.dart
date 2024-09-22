import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchNotifications() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load notifications');
  }
}
