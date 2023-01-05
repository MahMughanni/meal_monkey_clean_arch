import 'package:clean_architecture_meal_monky/presentation/screens/main_page.dart';
import 'package:clean_architecture_meal_monky/routes/app_router.dart';
import 'package:clean_architecture_meal_monky/routes/on_generate_routes.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_color_dark.dart';
import 'package:clean_architecture_meal_monky/utlites/global/theme/app_color/app_colot_light.dart';
import 'package:clean_architecture_meal_monky/utlites/global/theme/theme_data/theme_data_dark.dart';
import 'package:flutter/material.dart';
import 'core/services/services_locator.dart';

main() async {
  ServicesLocator().init();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getThemeDataDark(),
      onGenerateRoute: GenerateRouter.onGenerateRouter,
      initialRoute: NamedRoutes.splashRoute,
      navigatorKey: AppRouter.navigatorKey,
    );
  }
}
