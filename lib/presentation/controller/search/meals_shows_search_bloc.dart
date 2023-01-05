import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/search.dart';
import '../../../domain/usecase/get_meal_by_name_usecase.dart';
import '../../../utlites/enums.dart';
import 'meals_shows_search_event.dart';

part 'meals_shows_search_state.dart';

class MealsShowsSearchBloc extends Bloc<MealShowsSearchEvent, SearchState> {
  GetMealByNameUseCase getMealByNameUseCase;

  MealsShowsSearchBloc(this.getMealByNameUseCase) : super(const SearchState()) {
    on<MealShowsSearchEvent>(_getMealByName);
  }

  FutureOr<void> _getMealByName(
      MealShowsSearchEvent event, Emitter<SearchState> emit) async {
    final response =
        await getMealByNameUseCase(GetMealsParameters(event.mealTitle));

    response.fold(
        (l) => emit(
              state.copyWith(
                mealRequestState: RequestState.error,
                errorMessage: state.errorMessage,
              ),
            ), (r) {
      emit(
        state.copyWith(
          mealRequestState: RequestState.loaded,
          getMealByNameList: r
              .where((element) =>
                  element.strMeal.toLowerCase().contains(event.mealTitle))
              .toList() as List<Search>,
        ),
      );
    });
  }
}
