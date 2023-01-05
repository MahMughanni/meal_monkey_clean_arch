import 'package:clean_architecture_meal_monky/routes/app_router.dart';
import 'package:clean_architecture_meal_monky/utlites/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () => AppRouter.goToAndRemove());
    return const Scaffold(
      body: Center(
          child: Image(
        image: AssetImage(ImagesConstants.logo),
      )),
    );
  }
}
