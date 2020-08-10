import 'package:flutter/material.dart';
import 'package:instagram_ui/routes/routes.dart' as route;
import 'package:instagram_ui/screen/splash_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: route.generateRoute,
    );
  }
}
