import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_ui/error/error_screen.dart';
import 'package:instagram_ui/screen/Home_screen/main_home_screen.dart';
import 'package:instagram_ui/screen/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => ErrorScreen(),
      );
  }
}
