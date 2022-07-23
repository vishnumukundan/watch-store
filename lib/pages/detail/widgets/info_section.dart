import 'package:flutter/material.dart';
import 'package:watch_store/components/text.dart';
import 'package:watch_store/theme/config/screen_size_config.dart';
import 'package:watch_store/theme/config/values.dart';

import '../../../theme/config/colors.dart';
import '../../home/widget/tab_bar.dart';

class InfoSection__widget extends StatelessWidget {
  const InfoSection__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: kColorWhite,
        boxShadow: [
          BoxShadow(
            color: kColorAccent2.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 20,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            titleSection(),
            kSizedBoxHeight_32,
            colorsSection(),
            kSizedBoxHeight_32,
            DefaultTabController(
              length: 2,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: kColorPrimary,
                unselectedLabelColor: kColorAccent2.withOpacity(0.65),
                labelPadding: const EdgeInsets.symmetric(horizontal: 0),
                tabs: const [
                  Tab__widget(text: 'Details', selected: true),
                  Tab__widget(text: 'Review'),
                ],
              ),
            ),
            kSizedBoxHeight_8,
            const BodyLarge__text(
              text:
                  'The aluminium case is lightweight and made from 100 percent recycled aerospace grade alloy.',
              color: kColorAccent2,
              size: 18.0,
            ),
            kSizedBoxHeight_32,
            cartButton(),
            kSizedBoxHeight_16,
          ],
        ),
      ),
    );
  }

  ///
  ///
  /// sections
  ///

  Row titleSection() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleLarge__text(
              text: 'Apple Watch Series 7',
              fontWeight: FontWeight.w600,
            ),
            kSizedBoxHeight_8,
            TitleMedium__text(
              text: '( With solo loop )',
              color: kColorAccent2,
            ),
          ],
        ),
        const Spacer(),
        const HeadlineSmall__text(
          text: '\$799',
          fontWeight: FontWeight.w600,
          color: kColorPrimary,
        )
      ],
    );
  }

  //
  Column colorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TitleLarge__text(
          text: 'Colors',
          fontWeight: FontWeight.w600,
          size: 18.0,
        ),
        kSizedBoxHeight_8,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            colorVariantButton(
              color: kColorVariant1,
              colorName: 'Chalk Pink',
            ),
            colorVariantButton(
              selected: true,
              color: kColorVariant2,
              colorName: 'Nectarine',
            ),
            colorVariantButton(
              color: kColorVariant3,
              colorName: 'Eucalyptus',
            ),
          ],
        )
      ],
    );
  }

  Container cartButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xff4136F1),
            Color(0xff8743FF),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      child: const Center(
        child: HeadlineSmall__text(
          text: 'Add to cart',
          color: kColorWhite,
        ),
      ),
    );
  }
}

class colorVariantButton extends StatelessWidget {
  const colorVariantButton({
    Key? key,
    required this.color,
    required this.colorName,
    this.selected = false,
  }) : super(key: key);

  final bool selected;

  final color;
  final colorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: selected ? kColorAccent2 : kColorAccent2.withOpacity(0.2)),
        color: kColorWhite,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          kSizedBoxWidth_8,
          LabelLarge__text(
            text: colorName,
            color: selected ? kColorAccent2 : kColorAccent2.withOpacity(0.6),
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
