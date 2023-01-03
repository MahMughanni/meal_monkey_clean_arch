import 'package:clean_architecture_meal_monky/presentation/screens/main_page.dart';
import 'package:clean_architecture_meal_monky/routes/on_generate_routes.dart';
import 'package:clean_architecture_meal_monky/routes/named_routes.dart';
import 'package:flutter/material.dart';
import 'core/services/services_locator.dart';

main() async {
/*
  BaseMealsRemoteDataSource baseMealsRemoteDataSource = MealsRemoteDataSource();
  BaseMealsRepository baseMealsRepository =
      MealsRepository(baseMealsRemoteDataSource);
  GetAllCategoriesUseCase getAllCategoriesUseCase =
      GetAllCategoriesUseCase(baseMealsRepository);
  print(getAllCategoriesUseCase.baseMealsRepository.toString());
*/

  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: GenerateRouter.onGenerateRouter,
      initialRoute: NamedRoutes.homeRoute,
    );
  }
}
