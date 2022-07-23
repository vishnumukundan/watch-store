import 'package:flutter/material.dart';
import 'package:watch_store/components/text.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: HeadlineLarge__text(text: 'Home'),
        ),
      ),
    );
  }
}
