import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/category_products_response_model.dart';
part 'categories_state.freezed.dart';
@freezed
class CategoriesState with _$CategoriesState {
  /// Represents the initial state before any categories are fetched.
  const factory CategoriesState.initial() = _Initial;

  /// Represents the loading state when categories are being fetched from the API.
  const factory CategoriesState.categoriesLoading() = CategoriesLoading;

  /// Represents the success state when categories have been successfully fetched.
  /// [categoryDataList] contains the list of categories, which could be null or empty.
  const factory CategoriesState.categoriesSuccess(
      List<String> categoryDataList) = CategoriesSuccess;

  /// Represents the error state when there is an issue fetching categories.
  /// [errorMessage] contains the details of what went wrong.
  const factory CategoriesState.categoriesError(String errorMessage) =
      CategoriesError;

  /// Represents the state when a category is clicked.
  /// [indexOfCategory] holds the index of the selected category.
  const factory CategoriesState.onCategoryClick(int indexOfCategory) =
      OnCategoryClick;

  /// Represents the loading state when products of a specific category are being fetched.
  const factory CategoriesState.categoryProductsLoading() =
      CategoryProductsLoading;

  /// Represents the success state when products of a specific category have been successfully fetched.
  /// [categoryProductsResponseModel] contains the data of the fetched products.
  const factory CategoriesState.categoryProductsSuccess(
          List<String> categoryDataList, List<ProductModel> productsDataList) =
      CategoryProductsSuccess;

  /// Represents the error state when there is an issue fetching products for a specific category.
  /// [errorMessage] contains the details of what went wrong.
  const factory CategoriesState.categoryProductsError(String errorMessage) =
      CategoryProductsError;
  const factory CategoriesState.onCategoriesTabClick(int indexCategoryTab) =
      OnCategoriesTabClick;
}
