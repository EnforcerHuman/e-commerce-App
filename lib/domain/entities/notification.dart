import 'package:equatable/equatable.dart';

class Notifications extends Equatable {
  final String image;
  final String title;
  final String description;
  final String time;

  const Notifications({
    required this.image,
    required this.title,
    required this.description,
    required this.time,
  });

  @override
  List<Object> get props => [image, title, description, time];
}
