import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_viewer/core/error/failures.dart';
import 'package:task_viewer/core/usecase/usecase.dart';
import 'package:task_viewer/domain/entities/notification.dart';
import 'package:task_viewer/data/repositories/notification_repository.dart';

class GetNotifications
    implements UseCase<List<Notifications>, GetNotificationsParams> {
  final NotificationRepository repository;

  GetNotifications(this.repository);

  @override
  Future<Either<Failure, List<Notifications>>> call(
      GetNotificationsParams params) async {
    return await repository.getNotifications(
        page: params.page, pageSize: params.pageSize);
  }
}

class GetNotificationsParams extends Equatable {
  final int page;
  final int pageSize;

  const GetNotificationsParams({required this.page, required this.pageSize});

  @override
  List<Object> get props => [page, pageSize];
}
