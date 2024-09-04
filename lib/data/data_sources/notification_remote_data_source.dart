import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'package:task_viewer/data/models/notification_model.dart';

abstract class NotificationRemoteDataSource {
  Future<List<NotificationModel>> getNotifications(
      {int page = 1, int pageSize = 10});
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final http.Client client;

  NotificationRemoteDataSourceImpl({required this.client});

  @override
  Future<List<NotificationModel>> getNotifications(
      {int page = 1, int pageSize = 10}) async {
    final response = await client.get(
      Uri.parse(
        'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json',
      ),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse['data'] != null && jsonResponse['data'] is List) {
        final List<dynamic> jsonList = jsonResponse['data'];
        final int startIndex = (page - 1) * pageSize;
        final int endIndex = startIndex + pageSize;

        return jsonList
            .sublist(startIndex,
                endIndex > jsonList.length ? jsonList.length : endIndex)
            .map((jsonItem) => NotificationModel.fromJson(jsonItem))
            .toList();
      } else {
        throw Exception('Failed to load notifications - Invalid data format');
      }
    } else {
      throw Exception('Failed to load notifications');
    }
  }
}
