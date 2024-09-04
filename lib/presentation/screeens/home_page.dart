import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/common/app_bar.dart';
import 'package:task_viewer/presentation/widgets/common/bottom_nav_bar.dart';
import 'package:task_viewer/presentation/widgets/home_screen/home_screen_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: HomeScreenView(),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
