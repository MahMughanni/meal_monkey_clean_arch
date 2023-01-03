import 'package:clean_architecture_meal_monky/presentation/screens/deitals_screen.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/main_page.dart';

class GenerateRouter {
  static Route<dynamic> onGenerateRouter(RouteSettings settings) {

    final data = settings.arguments;


    switch (settings.name) {
      case NamedRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case NamedRoutes.detailsRoute:
        return MaterialPageRoute(
            builder: (_) => DetailsScreen(title: data.toString(),),);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
