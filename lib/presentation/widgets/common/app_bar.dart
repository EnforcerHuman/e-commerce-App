import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/app_colors.dart';
import 'package:task_viewer/core/theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.location_on,
        color: AppColors.primaryColor,
      ),
      title: const Row(
        children: [
          Text('ABCD ,New Delhi', style: TextStyles.headline2),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.primaryColor,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
