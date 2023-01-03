import 'package:clean_architecture_meal_monky/data/datasource/meals_remote_datasource.dart';
import 'package:clean_architecture_meal_monky/data/repository/meal_repository.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:clean_architecture_meal_monky/domain/usecase/get_categories_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/usecase/get_meal_by_name_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/usecase/get_products_by_category_usecase.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/categoryProducts/category_products_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/meal_category/meal_bloc.dart';
import 'package:clean_architecture_meal_monky/presentation/controller/search/meals_shows_search_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  void init() {
    getIt.registerFactory(
      () => MealBloc(
        getIt(),
      ),
    );

    getIt.registerFactory(
      () => CategoryProductsBloc(
        getIt(),
      ),
    );

    getIt.registerFactory(
      () => MealsShowsSearchBloc(
        getIt(),
      ),
    );

    ///DATA Source
    getIt.registerLazySingleton<BaseMealsRemoteDataSource>(
        () => MealsRemoteDataSource());

    /// DATA REPOSITORY
    getIt.registerLazySingleton<BaseMealsRepository>(
        () => MealsRepository(getIt()));

    /// UseCases
    getIt.registerLazySingleton<GetAllCategoriesUseCase>(
        () => GetAllCategoriesUseCase(getIt()));

    getIt.registerLazySingleton<GetMealByNameUseCase>(
        () => GetMealByNameUseCase(getIt()));

    getIt.registerLazySingleton<GetProductsByCategoryUseCase>(
        () => GetProductsByCategoryUseCase(getIt()));
  }
}
