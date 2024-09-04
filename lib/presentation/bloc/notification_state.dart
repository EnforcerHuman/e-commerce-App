// import 'package:equatable/equatable.dart';
// import 'package:task_viewer/domain/entities/notification.dart';

// abstract class NotificationState extends Equatable {
//   const NotificationState();

//   @override
//   List<Object> get props => [];
// }

// class NotificationInitial extends NotificationState {}

// class NotificationLoading extends NotificationState {}

// class NotificationLoaded extends NotificationState {
//   final List<Notifications> notifications;

//   const NotificationLoaded(this.notifications, {required bool hasReachedMax});

//   @override
//   List<Object> get props => [notifications];
// }

// class NotificationError extends NotificationState {
//   final String message;

//   const NotificationError(this.message);

//   @override
//   List<Object> get props => [message];
// }

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
