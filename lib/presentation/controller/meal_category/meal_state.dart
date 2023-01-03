
import 'package:equatable/equatable.dart';

import '../../../domain/entities/categories.dart';
import '../../../utlites/enums.dart';

class MealState extends Equatable {
  final List<Category> getAllCategory;
  final RequestState mealRequestState;
  final String errorMessage;

  const MealState({
    this.getAllCategory = const [],
    this.mealRequestState = RequestState.loading,
    this.errorMessage = '',
  });

  MealState copyWith({
    List<Category>? getAllCategory,
    RequestState? mealRequestState,
    String? errorMessage,
  }) {
    return MealState(
      getAllCategory: getAllCategory ?? this.getAllCategory,
      mealRequestState: mealRequestState ?? this.mealRequestState,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props {
    return [getAllCategory, mealRequestState, errorMessage];
  }
}
