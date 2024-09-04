import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/nearby_store_card.dart';
import 'package:task_viewer/presentation/widgets/title_with_button.dart';

class BuildNearbyStores extends StatelessWidget {
  const BuildNearbyStores({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleWithButton(
          title: 'Nearby Stores',
          buttonText: 'see all',
        ),
        NearbyStoreCard(
          name: 'Freshly Baker',
          cuisine: 'Sweets, North Indian',
          rating: 4.1,
          deliveryTime: '45 mins',
          discount: 'Upto 10% OFF',
          itemsAvailable: '3400+ items available',
          imageUrl: 'assets/images/nearby_store.png',
        ),
        NearbyStoreCard(
          name: 'Freshly Baker',
          cuisine: 'Sweets, North Indian',
          rating: 4.1,
          deliveryTime: '45 mins',
          discount: 'Upto 10% OFF',
          itemsAvailable: '3400+ items available',
          imageUrl: 'assets/images/nearby_store.png',
        ),
      ],
    );
  }
}
