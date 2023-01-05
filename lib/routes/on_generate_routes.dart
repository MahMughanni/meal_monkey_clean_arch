import 'package:clean_architecture_meal_monky/presentation/screens/deitals_screen.dart';
import 'package:clean_architecture_meal_monky/presentation/screens/splash_screen.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/main_page.dart';

class GenerateRouter {
  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    final data = settings.arguments;
    var result;

    switch (settings.name) {
      case NamedRoutes.splashRoute:
        result = const SplashScreen();
        break;

      case NamedRoutes.homeRoute:
        result = const MainPage();
        break;

      case NamedRoutes.detailsRoute:
        result = DetailsScreen(
          title: data.toString(),
        );
        break;

      default:
        result = const Scaffold(
          body: Center(
            child: Text('No Routes'),
          ),
        );
    }

    return MaterialPageRoute(builder: (BuildContext context) => result);
  }
}
