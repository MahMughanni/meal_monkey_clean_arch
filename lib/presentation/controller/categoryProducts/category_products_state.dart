part of 'category_products_bloc.dart';

class CategoryProductsState extends Equatable {
  final List<CategoryProducts> getProductsList;

  final RequestState requestState;

  final String stateMessage;

  const CategoryProductsState(
      {this.getProductsList = const [],
      this.requestState = RequestState.loading,
      this.stateMessage = ''});

  CategoryProductsState copyWith({
    List<CategoryProducts>? getProductsList,
    RequestState? requestState,
    String? stateMessage,
  }) {
    return CategoryProductsState(
      getProductsList: getProductsList ?? this.getProductsList,
      requestState: requestState ?? this.requestState,
      stateMessage: stateMessage ?? this.stateMessage,
    );
  }

  @override
  List<Object> get props {
    return [
      getProductsList,
      requestState,
      stateMessage,
    ];
  }
}
