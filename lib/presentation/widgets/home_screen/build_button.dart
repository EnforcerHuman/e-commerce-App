import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/common/custom_button.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
          height: 40,
          width: width * 0.8,
          child: CustomButton(title: 'View All Stores', onTap: () {})),
    );
  }
}
