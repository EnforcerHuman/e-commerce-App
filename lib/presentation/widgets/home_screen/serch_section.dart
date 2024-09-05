import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/screeens/notification_page.dart';
import 'package:task_viewer/presentation/widgets/common/search_bar.dart';

class SerchSection extends StatelessWidget {
  const SerchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Flexible(child: CustomSearchBar()),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()));
            },
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.red,
            ),
          ),
          const Icon(
            Icons.local_offer_outlined,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
