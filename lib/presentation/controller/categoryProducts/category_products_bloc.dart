import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architecture_meal_monky/domain/repository/base_meals_repository.dart';
import 'package:clean_architecture_meal_monky/utlites/enums.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/products_byCategory.dart';

part 'category_products_event.dart';

part 'category_products_state.dart';

class CategoryProductsBloc
    extends Bloc<CategoryProductsEvent, CategoryProductsState> {
  BaseMealsRepository mealsRepository;

  CategoryProductsBloc(this.mealsRepository)
      : super(const CategoryProductsState()) {
    on<CategoryProductsEvent>(_getProductsByCategory);
  }

  FutureOr<void> _getProductsByCategory(
      CategoryProductsEvent event, Emitter<CategoryProductsState> emit) async {
    final response = await mealsRepository.getCategoryProducts(event.title);
    response.fold(
      (l) => emit(state.copyWith(
        stateMessage: l.message,
        requestState: RequestState.error,
      )),
      (r) => emit(
        state.copyWith(
          getProductsList: r,
          requestState: RequestState.loaded,
        ),
      ),
    );
  }
}
