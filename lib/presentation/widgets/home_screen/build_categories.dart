import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/category_card.dart';

class BuildCategories extends StatelessWidget {
  const BuildCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    List<String> categories = [
      'Food delivery',
      'Medicines',
      'Pet supplies',
      'Gifts',
      'Meat',
      'cosmetics',
      'Stationary',
      'stores'
    ];
    List<String> images = [
      'assets/images/food_delivery.png',
      'assets/images/medicines.png',
      'assets/images/dashicons_pets.png',
      'assets/images/gift.png',
      'assets/images/meat.png',
      'assets/images/cosmetics.png',
      'assets/images/stationery.png',
      'assets/images/stores (1).png'
    ];
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
          return CategoryCard(
              category: categories[index], image: images[index]);
        },
      ),
    );
  }
}
