import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_advertisement.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_button.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_categories.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_more_button.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_nearby_stores.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_restaurant_card.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_serch_section.dart';
import 'package:task_viewer/presentation/widgets/home_screen/build_super_market_card.dart';
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
          const BuildSerchSection(),
          const BuildCategories(),
          const BuildMoreButton(),
          const BuildAdvertisement(),
          const BuildRestaurantCard(),
          const BuildSuperMarketCard(),
          const ReferalCard(
            offerPercentage: '15%',
            image: 'assets/images/gift.png',
          ),
          const BuildNearbyStores(),
          const BuildButton()
        ],
      ),
    );
  }
}

Widget _buildTitle() {
  return const HomeScreenTitle(title: 'What would you like to do today ?');
}
