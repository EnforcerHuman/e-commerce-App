import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String? offPercentage;
  final String category;

  const CategoryCard({
    super.key,
    required this.image,
    this.offPercentage,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Material(
                  elevation: 7,
                  shadowColor:
                      AppColors.secondryBackgroundColor.withOpacity(0.01),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02,
                      vertical: height * 0.01,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondryBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    category,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
