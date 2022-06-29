import 'package:flutter/material.dart';
import 'package:task1/uiScreens/onboardingScreen/onBoarding.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("images/gift.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: MyStatelessWidget(),
      ),
    );
  }
}

