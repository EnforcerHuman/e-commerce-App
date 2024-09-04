import 'package:task_viewer/domain/entities/notification.dart';

abstract class NotificationState {}

class NotificationInitial extends NotificationState {}

class NotificationLoading extends NotificationState {}

class NotificationLoaded extends NotificationState {
  final List<Notifications> notifications;
  final bool hasReachedMax;

  NotificationLoaded(
      {required this.notifications, required this.hasReachedMax});
}

class NotificationError extends NotificationState {
  final String message;

  NotificationError(this.message);
}
