import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_store/pages/home/home.dart';
import 'package:watch_store/theme/config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kColorScaffold,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: kColorScaffold,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      home: ScreenHome(),
    );
  }
}
