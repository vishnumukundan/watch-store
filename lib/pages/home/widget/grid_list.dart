import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';

import 'card.dart';

class GridList__widget extends StatelessWidget {
  const GridList__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: constraints.maxWidth * 0.06,
          runSpacing: constraints.maxWidth * 0.06,
          children: [
            Card_widget(
              imagePath: Assets.images.apple.path,
              title: 'Apple Watch',
              subTitle: 'Series 7',
              price: '\$799',
            ),
            Card_widget(
              imagePath: Assets.images.galaxy.path,
              title: 'Galaxy Watch',
              subTitle: 'Series 4',
              price: '\$599',
            ),
            Card_widget(
              imagePath: Assets.images.miWatch.path,
              title: 'Mi Watch',
              subTitle: 'All Series',
              price: '\$299',
            ),
            Card_widget(
              imagePath: Assets.images.amazfit.path,
              title: 'Amazfit Bip U',
              subTitle: 'Pro Series',
              price: '\$199',
            ),
          ],
        );
      },
    );
  }
}
