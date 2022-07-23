import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/pages/detail/widgets/detail_header.dart';
import 'package:watch_store/pages/detail/widgets/info_section.dart';
import 'package:watch_store/theme/config/colors.dart';
import 'package:watch_store/theme/config/screen_size_config.dart';

class ScreenDetail extends StatelessWidget {
  const ScreenDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScaffold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: getScreenHeightPercentage(40.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.images.appleLarge.path),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  detailHeader__widget(context),
                ],
              ),
              const InfoSection__widget(),
            ],
          ),
        ),
      ),
    );
  }
}
