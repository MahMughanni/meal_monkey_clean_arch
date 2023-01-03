
import 'package:equatable/equatable.dart';

abstract class MealEvent extends Equatable {
  @override
  List<Object> get props {
    return [];
  }
}

class GetAllCategoryEvent extends MealEvent {}

