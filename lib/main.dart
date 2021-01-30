import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'app/router.gr.dart' as ar;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      navigatorKey: StackedService.navigatorKey,
      initialRoute: ar.Routes.homeView,
      onGenerateRoute: ar.Router().onGenerateRoute,
    );
  }
}
