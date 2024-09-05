import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/home_screen/advertisement_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_button.dart';
import 'package:task_viewer/presentation/widgets/home_screen/categories_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_more_button.dart';
import 'package:task_viewer/presentation/widgets/home_screen/nearby_stores_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/restaurant_list_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/serch_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/super_market_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/home_screen_title.dart';
import 'package:task_viewer/presentation/widgets/referal_card.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTitle(),
          const SerchSection(),
          const CategoriesSection(),
          const BuildMoreButton(),
          const AdvertisementSection(),
          const RestaurantListSection(),
          const SuperMarketSection(),
          const ReferalCard(
            offerPercentage: '15%',
            image: 'assets/images/gift.png',
          ),
          const NearbyStoresSection(),
          const BuildButton(),
        ],
      ),
    );
  }
}

Widget _buildTitle() {
  return const HomeScreenTitle(title: 'What would you like to do today ?');
}
