import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:clean_architecture_meal_monky/core/usecase/base_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/entities/search.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class GetMealByNameUseCase extends BaseUseCase<List<Search>> {
  BaseMealsRepository baseMealsRepository;

  GetMealByNameUseCase(this.baseMealsRepository);

  @override
  Future<Either<Failure, List>> call([String? txt]) async {
    return await baseMealsRepository.getMealsByName(txt!);
  }

// Future<Either<Failure, List<Search>>> execute(String mealTitle) async {
//   return await baseMealsRepository.getMealsByName(mealTitle);
// }
}
