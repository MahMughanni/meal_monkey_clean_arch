import 'package:clean_architecture_meal_monky/core/network/api_constants.dart';
import 'package:clean_architecture_meal_monky/data/models/categories_model.dart';
import 'package:clean_architecture_meal_monky/domain/entities/categories.dart';
import 'package:clean_architecture_meal_monky/domain/entities/products_byCategory.dart';
import 'package:dio/dio.dart';
import '../../core/error/exception.dart';
import '../../domain/entities/search.dart';
import '../models/category_products_model.dart';
import '../models/search_model.dart';

abstract class BaseMealsRemoteDataSource {
  Future<List<Category>> getAllCategories();

  Future<List<Search>> getMealByName(String mealTitle);

  Future<List<CategoryProducts>> getCategoryProducts(String categoryName);
}

class MealsRemoteDataSource extends BaseMealsRemoteDataSource {
  @override
  Future<List<Category>> getAllCategories() async {
    final response = await Dio().get(ApiConstants.getAllCategoriesUrl);

    if (response.statusCode == 200) {
      return List<Category>.from(
        (response.data['categories'] as List).map(
          (e) => CategoriesModel.fromJson(e),
        ),
      );
    } else {
      throw LocalException();
    }
  }

  @override
  Future<List<Search>> getMealByName(String mealTitle) async {
    final response =
        await Dio().get('${ApiConstants.getMealByNameUrl}$mealTitle');

    if (response.statusCode == 200) {
      return List<Search>.from((response.data['meals'] as List)
          .map((e) => SearchModel.formJson(e))
          .toList()
          .where((element) => element.strMeal.toLowerCase().contains(mealTitle))
          .toList());
    } else {
      throw LocalException();
    }
  }

  @override
  Future<List<CategoryProducts>> getCategoryProducts(
      String categoryName) async {
    final response =
        await Dio().get('${ApiConstants.getCategoryProducts}$categoryName');
    // print(response);


    if (response.statusCode == 200) {
      return List<CategoryProducts>.from((response.data['meals'] as List)
          .map((e) => CategoryProductsModel.fromJson(e))
          .toList());
    } else {
      throw LocalException();
    }
  }
}
