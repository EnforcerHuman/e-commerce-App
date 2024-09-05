import 'package:dartz/dartz.dart';
import 'package:task_viewer/core/error/failures.dart';
import 'package:task_viewer/domain/entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<Notifications>>> getNotifications(
      {required int page, required int pageSize});
}
