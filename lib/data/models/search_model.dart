import 'package:clean_architecture_meal_monky/domain/entities/search.dart';

class SearchModel extends Search {
  SearchModel(
      {required super.idMeal,
      required super.strMeal,
      required super.strArea,
      required super.strInstructions,
      required super.strCategory,
      required super.strMealThumb});

  factory SearchModel.formJson(Map<String, dynamic> fromJson) {
    return SearchModel(
      idMeal: fromJson['idMeal'],
      strMeal: fromJson['strMeal'],
      strArea: fromJson['strArea'],
      strInstructions: fromJson['strInstructions'],
      strCategory: fromJson['strCategory'],
      strMealThumb: fromJson['strMealThumb'],
    );
  }

  @override
  String toString() {
    return 'SearchModel{$idMeal , $strMeal , $strArea ,$strCategory , $strMealThumb , }';
  }
}
