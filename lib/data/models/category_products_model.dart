import 'package:clean_architecture_meal_monky/domain/entities/products_byCategory.dart';

class CategoryProductsModel extends CategoryProducts {
  CategoryProductsModel(
      {required super.strMeal,
      required super.strMealThumb,
      required super.idMeal});

  factory CategoryProductsModel.fromJson(Map<String, dynamic> fromJson) {
    return CategoryProductsModel(
      strMeal: fromJson['strMeal'],
      strMealThumb: fromJson['strMealThumb'],
      idMeal: fromJson['idMeal'],
    );
  }
}
