
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../view_model/notification_model.dart';


// isolates used for multi threading
Future<List<NotificationsRemoteModel>> fetchNotifications() async {
  return await compute(fetchNotificationsInIsolate, null);
}

Future<List<NotificationsRemoteModel>> fetchNotificationsInIsolate(_) async {
  const url = 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final List notificationsData = jsonData['data'];
    return notificationsData.map((json) => NotificationsRemoteModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load notification details');
  }
}