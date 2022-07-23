import 'package:flutter/material.dart';
import 'package:watch_store/pages/home/widget/text_feild.dart';
import 'package:watch_store/theme/config/colors.dart';

import '../../../gen/assets.gen.dart';
import '../../../theme/config/screen_size_config.dart';

Padding header__widget() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Assets.icons.menu.svg(color: kColorSecondary),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: kColorAccent2.withOpacity(0.6)),
            borderRadius: BorderRadius.circular(80),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.search.svg(color: kColorSecondary),
              const SizedBox(width: 16),
              SizedBox(
                width: getScreenWidthPercentage(45.0),
                child: textField__widget(),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
