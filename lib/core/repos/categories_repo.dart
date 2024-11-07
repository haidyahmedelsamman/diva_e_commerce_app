import 'package:diva_e_commerce_app/core/network/categories_api_service.dart';
import '../../../../core/network/api_result.dart';
import '../models/category_products_response_model.dart';

/// The CategoriesRepo class handles the data operations for the Category and home features.
class CategoriesRepo {
  final CategoriesApiService _categoriesApiService;

  CategoriesRepo(this._categoriesApiService);

  Future<ApiResult<List<String>>> getCategories() async {
    try {
      // Attempt to get categories from the API service.
      final response = await _categoriesApiService.getCategories();
      return ApiResult.success(response); // On success, return the data.
    } catch (error) {
      // On failure, catch the error and return the failure result.
      return ApiResult.failure(error.toString());
    }
  }

  Future<ApiResult<List<ProductModel>>> getCategoryProducts(
      String categoryName) async {
    try {
      // Attempt to get products of each category from the API service.
      final response =
          await _categoriesApiService.getCategoryProducts(categoryName: categoryName);
      return ApiResult.success(response); // On success, return the data.
    } catch (error) {
      // On failure, catch the error and return the failure result.
      return ApiResult.failure(error.toString());
    }
  }
}
