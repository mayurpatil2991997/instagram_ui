import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/icon_constants.dart';
import 'package:instagram_ui/screen/Home_screen/main_home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen())));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
            child: SvgPicture.asset(
              INSTAGRAM_LOGO,
              height: 65.0,
            ),
        ),

      ),
    );
  }
}
