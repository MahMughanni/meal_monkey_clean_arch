import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static goToAndRemove() {
    navigatorKey.currentState!.pushReplacementNamed(NamedRoutes.homeRoute);
  }

  static goTo({required String routeName}) {
    navigatorKey.currentState!.pushNamed(routeName);
  }
}
