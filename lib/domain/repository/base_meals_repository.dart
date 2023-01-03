import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:clean_architecture_meal_monky/domain/entities/categories.dart';
import 'package:clean_architecture_meal_monky/domain/entities/products_byCategory.dart';
import 'package:clean_architecture_meal_monky/domain/entities/search.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMealsRepository {
  Future<Either<Failure, List<Category>>> getAllCategories();

  Future<Either<Failure, List<Search>>> getMealsByName(String mealTitle);

  Future<Either<Failure, List<CategoryProducts>>> getCategoryProducts(String categoryName);

  getSpecificProduct(String id);
}
