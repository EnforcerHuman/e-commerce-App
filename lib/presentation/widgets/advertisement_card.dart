import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';

class AdvertisementCard extends StatelessWidget {
  final String title;
  final String buttonText;
  final String image;
  const AdvertisementCard({
    super.key,
    required this.title,
    required this.buttonText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardWidth = width * 0.9;
    final double cardHeight = height * 0.4;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: cardWidth * 0.4,
                      height: cardHeight * 0.1,
                      color: AppColors.secondaryColor,
                      child: const Center(child: Text('Check Now'))),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: cardWidth * 0.30,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
