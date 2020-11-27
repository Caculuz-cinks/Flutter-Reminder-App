import 'package:Todo/core/routes/route_names.dart';
import 'package:Todo/ui/views/home.dart';
import 'package:Todo/ui/views/category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
//Routes will be generated with this function
//Therefore all views will be registered here with appropriate page transition
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RouteNames.splashScreen:
      // return CupertinoPageRoute(builder: (context) => ScreenNameHere());
      // break;
      case RouteNames.home:
        return CupertinoPageRoute(builder: (context) => HomeScreen());
        break;
      case RouteNames.work:
        return CupertinoPageRoute(builder: (context) => WorkView());
        break;

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
      builder: (context) => Scaffold(
          appBar: AppBar(
              title: Text(
            'Page not found',
            style: TextStyle(color: Colors.red),
          )),
          body: Center(
            child: Text(
              'Error! Page not found',
              style: TextStyle(color: Colors.red),
            ),
          )),
    );
  }
}
