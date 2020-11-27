import 'package:Todo/ui/views/home.dart';
import 'package:Todo/ui/views/category_view.dart';
import 'package:flutter/material.dart';

class RouteNames {
  //route names used through out the app will be specified as static constants here

  // static const String splashScreen = '/';
  static const String home = '/';
  static const String work = '/work';

  static Map<String, Widget Function(BuildContext)> routes = {
    //RouteNames.splashScreen: (context) => ScreenNameHere(),
    RouteNames.home: (context) => HomeScreen(),
    RouteNames.work: (context) => WorkView(),
  };
}
