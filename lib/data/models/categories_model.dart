import 'package:clean_architecture_meal_monky/domain/entities/categories.dart';

class CategoriesModel extends Category {
  CategoriesModel({
    required super.idCategory,
    required super.strCategory,
    required super.strCategoryThumb,
    required super.strCategoryDescription,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> fromJson) {
    return CategoriesModel(
      idCategory: fromJson['idCategory'],
      strCategory: fromJson['strCategory'],
      strCategoryThumb: fromJson['strCategoryThumb'],
      strCategoryDescription: fromJson['strCategoryDescription'],
    );
  }

  @override
  String toString() {
    return 'CategoriesModel{$idCategory , $strCategory , $strCategoryThumb , $strCategoryDescription  }';
  }
}
