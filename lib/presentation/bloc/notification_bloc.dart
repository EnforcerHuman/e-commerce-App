import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_viewer/domain/entities/notification.dart';
import 'package:task_viewer/domain/usecases/get_notification.dart';
import 'package:task_viewer/presentation/bloc/notification_event.dart';
import 'package:task_viewer/presentation/bloc/notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotifications getNotifications;
  int _currentPage = 1;
  final int _pageSize = 10;
  List<Notifications> _allNotifications = [];
  bool _hasReachedMax = false;

  NotificationBloc({required this.getNotifications})
      : super(NotificationInitial()) {
    on<GetNotificationsEvent>((event, emit) async {
      if (state is NotificationLoading) return;
      if (state is NotificationLoaded && _hasReachedMax) return;

      emit(NotificationLoading());

      final result = await getNotifications(
          GetNotificationsParams(page: _currentPage, pageSize: _pageSize));

      result.fold((failure) => emit(NotificationError(failure.toString())),
          (newNotifications) {
        if (newNotifications.isEmpty) {
          _hasReachedMax = true;
        } else {
          _currentPage++;
          _allNotifications.addAll(newNotifications);
        }
        emit(NotificationLoaded(
            notifications: _allNotifications, hasReachedMax: _hasReachedMax));
      });
    });
  }
}
