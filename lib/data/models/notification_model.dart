import 'package:task_viewer/domain/entities/notification.dart';

class NotificationModel extends Notifications {
  NotificationModel({
    required String image,
    required String title,
    required String description,
    required String time,
  }) : super(image: image, title: title, description: description, time: time);

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      image: json['image'] ?? '', // Handle null with a default value
      title: json['title'] ?? '', // Handle null with a default value
      description: json['body'] ?? '', // Handle null with a default value
      time: json['timestamp'] ?? '', // Handle null with a default value
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'body': description, // Ensure the key matches the JSON structure
      'timestamp': time, // Ensure the key matches the JSON structure
    };
  }
}
