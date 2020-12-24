import 'package:flutter/widgets.dart';

import 'package:qviens/screens/splash/splash_screen.dart';

import 'screens/home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
