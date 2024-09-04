import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';
import 'package:task_viewer/core/theme/text_styles.dart';

class ReferalCard extends StatelessWidget {
  final String offerPercentage;
  final String image;

  const ReferalCard({
    super.key,
    required this.offerPercentage,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardWidth = width * 0.9;
    final double cardHeight = height * 0.2;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Refer & Earn',
                      style: TextStyles.headline1.copyWith(
                        fontSize: height * 0.03, // Responsive font size
                      ),
                    ),
                    SizedBox(height: cardHeight * 0.05),
                    Text(
                      'Invite your friends and earn $offerPercentage off',
                      style: TextStyles.buttonText1.copyWith(
                        fontSize: height * 0.02, // Responsive font size
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: cardHeight - 20,
              width: cardWidth * 0.3,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
