import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/categories.dart';

abstract class BaseUseCase<T> {
  Future<Either<Failure, List<dynamic>>> call([String? txt]);
}
