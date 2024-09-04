// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:task_viewer/core/network/network_info.dart';
import 'package:task_viewer/data/data_sources/notification_remote_data_source.dart';
import 'package:task_viewer/data/repositories/notification_repository_impl.dart';
import 'package:task_viewer/domain/usecases/get_notification.dart';
import 'package:task_viewer/presentation/bloc/notification_bloc.dart';
import 'package:task_viewer/presentation/screeens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NotificationBloc>(
          create: (context) => NotificationBloc(
            getNotifications: GetNotifications(
              NotificationRepositoryImpl(
                remoteDataSource: NotificationRemoteDataSourceImpl(
                  client: http.Client(),
                ),
                networkInfo: NetworkInfoImpl(
                  InternetConnectionChecker(),
                ),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
