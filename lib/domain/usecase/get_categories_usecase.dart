import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:clean_architecture_meal_monky/core/usecase/base_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/entities/categories.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllCategoriesUseCase extends BaseUseCase<List<Category>> {
  BaseMealsRepository baseMealsRepository;

  GetAllCategoriesUseCase(this.baseMealsRepository);

  @override
  Future<Either<Failure, List<Category>>> call([String? txt]) async {
    return await baseMealsRepository.getAllCategories();
  }
}
