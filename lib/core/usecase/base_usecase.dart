import 'package:clean_architecture_meal_monky/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/categories.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, List<dynamic>>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  @override
  List<Object> get props => [];
}
