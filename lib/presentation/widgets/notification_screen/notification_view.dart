import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_viewer/domain/entities/notification.dart';
import 'package:task_viewer/presentation/bloc/notification_bloc.dart';
import 'package:task_viewer/presentation/bloc/notification_event.dart';
import 'package:task_viewer/presentation/widgets/notification_card.dart';

class NotificationListView extends StatefulWidget {
  final List<Notifications> notifications;
  final bool hasReachedMax;

  const NotificationListView({
    super.key,
    required this.notifications,
    required this.hasReachedMax,
  });

  @override
  // ignore: library_private_types_in_public_api
  _NotificationListViewState createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.notifications.length + (widget.hasReachedMax ? 0 : 1),
      itemBuilder: (context, index) {
        if (index >= widget.notifications.length) {
          return const Center(child: CircularProgressIndicator());
        }
        final notification = widget.notifications[index];
        return NotificationCard(
            imagePath: notification.image,
            title: notification.title,
            body: notification.description,
            timeAgo: notification.time);
      },
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<NotificationBloc>().add(GetNotificationsEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
