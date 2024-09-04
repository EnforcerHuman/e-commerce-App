import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_viewer/presentation/bloc/notification_bloc.dart';
import 'package:task_viewer/presentation/bloc/notification_event.dart';
import 'package:task_viewer/presentation/bloc/notification_state.dart';

import 'package:task_viewer/presentation/widgets/notification_screen/notification_view.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationInitial) {
            context.read<NotificationBloc>().add(GetNotificationsEvent());
            return const Center(child: CircularProgressIndicator());
          } else if (state is NotificationLoaded) {
            return NotificationListView(
              notifications: state.notifications,
              hasReachedMax: state.hasReachedMax,
            );
          } else if (state is NotificationError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
