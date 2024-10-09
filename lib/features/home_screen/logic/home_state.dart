import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

/// The HomeState class represents the various states for the home feature.
/// It is created using the `freezed` package, which generates immutable and
/// union types for Dart classes, making it easier to manage state.

@freezed
class HomeState with _$HomeState {
  /// Represents the initial state before any categories are fetched.
  const factory HomeState.initial() = _Initial;

  /// Represents the loading state when categories are being fetched from the API.
  const factory HomeState.categoriesLoading() = CategoriesLoading;

  /// Represents the success state when categories have been successfully fetched.
  /// [categoryDataList] contains the list of categories, which could be null or empty.
  const factory HomeState.categoriesSuccess(List<String> categoryDataList) =
      CategoriesSuccess;

  /// Represents the error state when there is an issue fetching categories.
  /// [errorMessage] contains the details of what went wrong.
  const factory HomeState.categoriesError(String errorMessage) =
      CategoriesError;

  /// Represents the state when a category is clicked.
  /// [indexOfCategory] holds the index of the selected category.
  const factory HomeState.onCategoryClick(int indexOfCategory) =
      OnCategoryClick;

  /// Represents the loading state when products of a specific category are being fetched.
  const factory HomeState.categoryProductsLoading() = CategoryProductsLoading;

  /// Represents the success state when products of a specific category have been successfully fetched.
  /// [categoryProductsResponseModel] contains the data of the fetched products.
  const factory HomeState.categoryProductsSuccess(
      List<ProductModel> productsDataList) = CategoryProductsSuccess;

  /// Represents the error state when there is an issue fetching products for a specific category.
  /// [errorMessage] contains the details of what went wrong.
  const factory HomeState.categoryProductsError(String errorMessage) =
      CategoryProductsError;
}
