class Category {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;

  Category({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          runtimeType == other.runtimeType &&
          idCategory == other.idCategory &&
          strCategory == other.strCategory &&
          strCategoryThumb == other.strCategoryThumb &&
          strCategoryDescription == other.strCategoryDescription;

  @override
  int get hashCode =>
      idCategory.hashCode ^
      strCategory.hashCode ^
      strCategoryThumb.hashCode ^
      strCategoryDescription.hashCode;
}
