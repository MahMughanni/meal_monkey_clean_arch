import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:clean_architecture_meal_monky/core/usecase/base_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/entities/products_byCategory.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:dartz/dartz.dart';

class GetProductsByCategoryUseCase
    extends BaseUseCase<List<CategoryProducts>, GetProductsParameters> {
  BaseMealsRepository baseMealsRepository;

  GetProductsByCategoryUseCase(this.baseMealsRepository);

  @override
  Future<Either<Failure, List<CategoryProducts>>> call(
      GetProductsParameters parameters) async {
    return baseMealsRepository.getCategoryProducts(parameters.title);
  }
}

class GetProductsParameters {
  String title;

  GetProductsParameters(this.title);
}
