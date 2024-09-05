import 'package:flutter/material.dart';
import 'package:task_viewer/presentation/widgets/deals_card.dart';
import 'package:task_viewer/presentation/widgets/title_with_button.dart';

class SuperMarketSection extends StatelessWidget {
  const SuperMarketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleWithButton(title: 'Craze Deals'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomerFavoriteSupermarketsCard(),
              CustomerFavoriteSupermarketsCard()
            ],
          ),
        ),
      ],
    );
  }
}
