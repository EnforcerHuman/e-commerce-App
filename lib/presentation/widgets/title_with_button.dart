import 'package:flutter/material.dart';
import 'package:task_viewer/core/theme/text_styles.dart';

class TitleWithButton extends StatelessWidget {
  final String title;
  final String? buttonText;
  const TitleWithButton({super.key, required this.title, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.headline2,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                buttonText ?? '',
                style: TextStyles.homeScreenTextButton,
              ))
        ],
      ),
    );
  }
}
