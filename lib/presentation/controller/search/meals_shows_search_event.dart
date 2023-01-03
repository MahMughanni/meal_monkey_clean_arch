import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  @override
  List<Object> get props {
    return [];
  }
}

class MealShowsSearchEvent extends SearchEvent {
  final String mealTitle;

  MealShowsSearchEvent({required this.mealTitle});
}
