import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';

class BuildMoreButton extends StatelessWidget {
  const BuildMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
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
}
