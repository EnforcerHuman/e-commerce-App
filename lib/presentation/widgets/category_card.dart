import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String? offPercentage;

  const CategoryCard({super.key, required this.image, this.offPercentage});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      elevation: 7,
      shadowColor: AppColors.secondryBackgroundColor.withOpacity(0.01),
      child: Padding(
        padding: EdgeInsets.only(
            left: width * 0.01, right: width * 0.01, top: width * 0.01),
        child: Container(
          width: width * 0.3,
          height: height * 0.2,
          decoration: BoxDecoration(
              color: AppColors.secondryBackgroundColor,
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
