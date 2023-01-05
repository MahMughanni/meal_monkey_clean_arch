import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_meal_monky/core/usecase/base_usecase.dart';
import 'package:clean_architecture_meal_monky/domain/usecase/get_categories_usecase.dart';
import '../../../utlites/enums.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  GetAllCategoriesUseCase getAllCategoriesUseCase;

  MealBloc(this.getAllCategoriesUseCase) : super(const MealState()) {
    on<GetAllCategoryEvent>(_getAllCategory);
  }

  FutureOr<void> _getAllCategory(
      MealEvent event, Emitter<MealState> emit) async {
    final response = await getAllCategoriesUseCase(NoParameters());
    response.fold(
      (l) => emit(state.copyWith(
        mealRequestState: RequestState.error,
        errorMessage: l.message.toString(),
      )),
      (r) => emit(
        state.copyWith(
          getAllCategory: r,
          mealRequestState: RequestState.loaded,
        ),
      ),
    );
  }
}
