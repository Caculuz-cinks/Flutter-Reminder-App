import 'package:Todo/core/providers/providers.dart';
import 'package:Todo/core/routes/route_generator.dart';
import 'package:Todo/core/routes/route_names.dart';
import 'package:Todo/ui/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAPP();
  }
}

class MaterialAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
          child: MaterialApp(
        theme: ThemeData(
          canvasColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        title: "RemindMe",
        routes: RouteNames.routes,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
