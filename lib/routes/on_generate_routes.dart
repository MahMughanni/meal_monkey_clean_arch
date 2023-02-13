import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/deitals_screen.dart';
import '../presentation/pages/main_page.dart';
import '../presentation/pages/splash_screen.dart';

class GenerateRouter {
  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    final data = settings.arguments;
    dynamic result;

    switch (settings.name) {
      case NamedRoutes.splashRoute:
        result = const SplashScreen();
        break;

      case NamedRoutes.homeRoute:
        result = const MainPage();
        break;

      case NamedRoutes.detailsRoute:
        result = DetailsScreen(title: data.toString(),
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
