import 'package:clean_architecture_meal_monky/core/error/exception.dart';
import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:clean_architecture_meal_monky/domain/entities/categories.dart';
import 'package:clean_architecture_meal_monky/domain/entities/products_byCategory.dart';
import 'package:clean_architecture_meal_monky/domain/entities/search.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasource/meals_remote_datasource.dart';

class MealsRepository extends BaseMealsRepository {
  BaseMealsRemoteDataSource baseMealsRemoteDataSource;

  MealsRepository(this.baseMealsRemoteDataSource);

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    final response = await baseMealsRemoteDataSource.getAllCategories();
    try {
      return Right(response);
    } on LocalException catch (error) {
      return Left(DataFailure(error.errorMessage.toString()));
    }
  }

  @override
  getSpecificProduct(String id) {
    // TODO: implement getSpecificProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Search>>> getMealsByName(mealTitle) async {
    final response = await baseMealsRemoteDataSource.getMealByName(mealTitle);
    try {
      return Right(response);
    } on LocalException catch (error) {
      return Left(DataFailure(error.errorMessage.toString()));
    }
  }




  @override
  Future<Either<Failure, List<CategoryProducts>>> getCategoryProducts(
      String categoryName) async {
    final response =
        await baseMealsRemoteDataSource.getCategoryProducts(categoryName);
    try {
      return Right(response);
    } on LocalException catch (error) {
      return Left(DataFailure(error.errorMessage.toString()));
    }
  }
}
