import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/restaurant_card.dart';
import 'package:task_viewer/presentation/widgets/title_with_button.dart';

class BuildRestaurantCard extends StatelessWidget {
  const BuildRestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWithButton(
          title: 'Trending',
          buttonText: 'view all',
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const RestaurantCard(
              name: 'Mithas Bandar',
              cuisine: 'Sweets, North Indian',
              location: '(store location)',
              distance: 6.4,
              rating: 4.1,
              deliveryTime: 45,
              imageUrl: 'assets/images/ice_cream.png',
            );
          },
        ),
      ],
    );
  }
}
