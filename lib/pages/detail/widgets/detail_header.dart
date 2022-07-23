import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/theme/config/colors.dart';
import 'package:watch_store/theme/config/screen_size_config.dart';
import 'package:watch_store/utilities/services/navigator.dart';

Widget detailHeader__widget(context) {
  return Padding(
    padding: EdgeInsets.only(
      top: getScreenHeightPercentage(2.0),
      bottom: getScreenHeightPercentage(2.0),
      left: getScreenWidthPercentage(5.0),
      right: getScreenWidthPercentage(5.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () => PageNav().pop(context),
          child: Assets.icons.arrowLeft.svg(color: kColorSecondary),
        ),
        Assets.icons.heart.svg(color: kColorSecondary),
      ],
    ),
  );
}
