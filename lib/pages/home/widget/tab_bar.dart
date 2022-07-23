import 'package:flutter/material.dart';
import 'package:watch_store/components/text.dart';
import 'package:watch_store/theme/config/values.dart';

import '../../../theme/config/colors.dart';

class TabBar__widget extends StatelessWidget {
  const TabBar__widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: TabBar(
        isScrollable: true,
        indicatorColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: kColorPrimary,
        unselectedLabelColor: kColorAccent2.withOpacity(0.65),
        labelPadding: const EdgeInsets.symmetric(horizontal: 0),
        tabs: const [
          Tab__widget(
            text: 'Smart Watch',
            textColor: kColorPrimary,
            fontWeight: FontWeight.w600,
            indicatorColor: kColorPrimary,
          ),
          Tab__widget(text: 'Casio'),
          Tab__widget(text: 'Tissot'),
          Tab__widget(text: 'Seiko'),
        ],
      ),
    );
  }
}

//Tab widget

class Tab__widget extends StatelessWidget {
  const Tab__widget({
    Key? key,
    required this.text,
    this.textColor,
    this.indicatorColor,
    this.fontWeight,
  }) : super(key: key);

  final text;
  final textColor;
  final indicatorColor;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TitleMedium__text(
              text: text,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: textColor ?? kColorAccent2.withOpacity(0.65),
            ),
            kSizedBoxHeight_8,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: indicatorColor ?? Colors.transparent,
              ),
              height: 2,
              width: 32,
            ),
          ],
        ),
        kSizedBoxWidth_24,
      ],
    );
  }
}
