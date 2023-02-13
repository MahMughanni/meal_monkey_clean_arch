class ApiConstants {
  static const String baseUrl = 'https://www.themealdb.com/api/json/v1';
  static const String apiKey = '1';


  static const String getCategoryProducts = '$baseUrl/$apiKey/filter.php?c=';
  static const String getAllCategoriesUrl = '$baseUrl/$apiKey/categories.php';
  static const String getMealByNameUrl = '$baseUrl/$apiKey/search.php?s=';
}
