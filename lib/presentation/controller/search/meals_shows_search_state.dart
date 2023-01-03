part of 'meals_shows_search_bloc.dart';

class SearchState extends Equatable {
  final List<Search> getMealByNameList;
  final RequestState mealRequestState;
  final String errorMessage;

  const SearchState({
    this.getMealByNameList = const [],
    this.mealRequestState = RequestState.loading,
    this.errorMessage = ' ',
  });

  SearchState copyWith({
    List<Search>? getMealByNameList,
    RequestState? mealRequestState,
    String? errorMessage,
  }) {
    return SearchState(
      getMealByNameList: getMealByNameList ?? this.getMealByNameList,
      mealRequestState: mealRequestState ?? this.mealRequestState,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props {
    return [
      getMealByNameList,
      mealRequestState,
      errorMessage,
    ];
  }
}

class SearchUninitialized extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchLoaded extends SearchState {
  final List<Search> searchList;

  const SearchLoaded({required this.searchList});

  @override
  List<Object> get props => [];
}
