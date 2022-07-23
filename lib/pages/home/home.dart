import 'package:flutter/material.dart';
import 'package:watch_store/components/text.dart';
import 'package:watch_store/pages/home/widget/grid_list.dart';
import 'package:watch_store/pages/home/widget/header.dart';
import 'package:watch_store/pages/home/widget/tab_bar.dart';
import 'package:watch_store/theme/config/colors.dart';
import 'package:watch_store/theme/config/screen_size_config.dart';
import 'package:watch_store/theme/config/values.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      backgroundColor: kColorScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getScreenWidthPercentage(5.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getScreenHeightPercentage(2.0)),
                header__widget(),
                const SizedBox(height: 20),
                const DisplaySmall__text(
                  text: 'Find your suitable watch now.',
                  fontWeight: FontWeight.w700,
                  lineHeight: 1.3,
                ),
                kSizedBoxHeight_24,
                const TabBar__widget(),
                kSizedBoxHeight_24,
                const GridList__widget(),
                kSizedBoxHeight_32,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
