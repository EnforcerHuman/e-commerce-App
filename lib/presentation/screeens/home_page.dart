import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';
import 'package:task_viewer/presentation/screeens/notification_page.dart';
import 'package:task_viewer/presentation/widgets/advertisement_card.dart';
import 'package:task_viewer/presentation/widgets/category_card.dart';
import 'package:task_viewer/presentation/widgets/deals_card.dart';
import 'package:task_viewer/presentation/widgets/nearby_store_card.dart';
import 'package:task_viewer/presentation/widgets/referal_card.dart';
import 'package:task_viewer/presentation/widgets/restaurant_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCategories(context),
            _buildMoreButton(),
            _buildAdvertisementCard(),
            _buildRestaurantCard(context),
            _buildSuperMarketCard(context),
            const ReferalCard(
              offerPercentage: '15%',
              image: 'assets/images/gift.png',
            ),
            const NearbyStoreCard(
              name: 'Freshly Baker',
              cuisine: 'Sweets, North Indian',
              rating: 4.1,
              deliveryTime: '45 mins',
              discount: 'Upto 10% OFF',
              itemsAvailable: '3400+ items available',
              imageUrl: 'https://example.com/path-to-your-image.jpg',
            ),
            ElevatedButton(
              child: const Text('Go to Notifications'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCategories(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;

  return SizedBox(
    height: height * 0.25,
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const CategoryCard(
          image: 'assets/images/burger_drink.dart.png',
        );
      },
    ),
  );
}

Widget _buildMoreButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'More',
        style: TextStyle(color: AppColors.primaryColor),
      ),
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.primaryColor,
          ))
    ],
  );
}

Widget _buildAdvertisementCard() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const AdvertisementCard(
          image: 'assets/images/advertisement_card_image.png',
          title: 'Discount \n 25% on \n ALL FRUITS',
          buttonText: 'Shop Now',
        );
      },
    ),
  );
}

Widget _buildRestaurantCard(BuildContext context) {
  return const SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Column(
      children: [
        Row(
          children: [
            RestaurantCard(
              name: 'Mithas Bandar',
              cuisine: 'Sweets, North Indian',
              location: '(store location)',
              distance: 6.4,
              rating: 4.1,
              deliveryTime: 45,
              imageUrl: 'assets/images/ice_cream.png',
            ),
            RestaurantCard(
              name: 'Mithas Bandar',
              cuisine: 'Sweets, North Indian',
              location: '(store location)',
              distance: 6.4,
              rating: 4.1,
              deliveryTime: 45,
              imageUrl: 'assets/images/ice_cream.png',
            )
          ],
        ),
        Row(
          children: [
            RestaurantCard(
              name: 'Mithas Bandar',
              cuisine: 'Sweets, North Indian',
              location: '(store location)',
              distance: 6.4,
              rating: 4.1,
              deliveryTime: 45,
              imageUrl: 'assets/images/ice_cream.png',
            ),
            RestaurantCard(
              name: 'Mithas Bandar',
              cuisine: 'Sweets, North Indian',
              location: '(store location)',
              distance: 6.4,
              rating: 4.1,
              deliveryTime: 45,
              imageUrl: 'assets/images/ice_cream.png',
            )
          ],
        ),
      ],
    ),
  );
}

Widget _buildSuperMarketCard(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
  final double cardWidth = width * 0.9;
  final double cardHeight = height * 0.4;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: const Row(
      children: [
        CustomerFavoriteSupermarketsCard(),
        CustomerFavoriteSupermarketsCard()
      ],
    ),
  );
}
