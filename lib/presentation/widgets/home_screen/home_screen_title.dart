import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/text_styles.dart';

class HomeScreenTitle extends StatelessWidget {
  final String title;
  const HomeScreenTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(title, style: TextStyles.blackHeadLine1),
        ));
  }
}
