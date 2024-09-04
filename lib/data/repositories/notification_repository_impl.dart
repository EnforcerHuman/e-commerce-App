import 'package:dartz/dartz.dart';
import 'package:task_viewer/core/error/failures.dart';
import 'package:task_viewer/core/network/network_info.dart';
import 'package:task_viewer/data/data_sources/notification_remote_data_source.dart';
import 'package:task_viewer/data/repositories/notification_repository.dart';
import 'package:task_viewer/domain/entities/notification.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NotificationRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Notifications>>> getNotifications({
    required int page,
    required int pageSize,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteNotifications = await remoteDataSource.getNotifications(
          page: page,
          pageSize: pageSize,
        );
        return Right(remoteNotifications);
      } catch (e) {
        return const Left(ServerFailure());
      }
    } else {
      return const Left(NetworkFailure());
    }
  }
}
