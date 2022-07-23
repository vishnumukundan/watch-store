import 'package:flutter/material.dart';
import 'package:watch_store/components/text.dart';
import 'package:watch_store/pages/detail/detail.dart';
import 'package:watch_store/theme/config/values.dart';
import 'package:watch_store/utilities/services/navigator.dart';

import '../../../theme/config/colors.dart';
import '../../../theme/config/screen_size_config.dart';

class Card_widget extends StatelessWidget {
  const Card_widget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.price,
  }) : super(key: key);

  final imagePath;
  final title;
  final subTitle;
  final price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PageNav().push(context, ScreenDetail());
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kColorWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: kColorAccent2.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, 6),
            )
          ],
        ),
        width: getScreenWidthPercentage(42.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: getScreenWidthPercentage(30.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
                color: kColorVariant5,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            kSizedBoxHeight_16,
            TitleLarge__text(
              text: title,
              fontWeight: FontWeight.w600,
              size: 18.0,
            ),
            kSizedBoxHeight_8,
            TitleMedium__text(
              text: subTitle,
              color: kColorAccent2,
            ),
            kSizedBoxHeight_16,
            HeadlineSmall__text(
              text: price,
              fontWeight: FontWeight.w500,
              color: kColorPrimary,
              size: 22.0,
            )
          ],
        ),
      ),
    );
  }
}
