import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/advertisement_card.dart';
import 'package:task_viewer/presentation/widgets/title_with_button.dart';

class AdvertisementSection extends StatelessWidget {
  const AdvertisementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWithButton(title: 'Top picks for you'),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const AdvertisementCard(
                image: 'assets/images/advertisement_card_image.png',
                title: 'Discount \n 25% on \n ALL FRUITS',
                buttonText: 'Shop Now',
              );
            },
          ),
        ),
      ],
    );
  }
}
