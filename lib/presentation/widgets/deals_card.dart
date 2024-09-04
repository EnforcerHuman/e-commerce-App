import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';

class CustomerFavoriteSupermarketsCard extends StatelessWidget {
  const CustomerFavoriteSupermarketsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardWidth = width * 0.8;
    final double cardHeight = height * 0.25;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: SizedBox(
                width: cardWidth * 0.5,
                height: cardHeight,
                child: Image.asset(
                  'assets/images/deals_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Customer favourite\n top supermarkets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: cardHeight * 0.05),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          'Explore',
                          style: TextStyle(color: AppColors.secondaryColor),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 16,
                          color: AppColors.secondaryColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
