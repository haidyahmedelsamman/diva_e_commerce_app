import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';

import '../../../../core/network/api_result.dart';
import '../apis/home_api_service.dart';

/// The HomeRepo class handles the data operations for the home feature.
class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<List<String>>> getCategories() async {
    try {
      // Attempt to get categories from the API service.
      final response = await _homeApiService.getCategories();
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
          await _homeApiService.getCategoryProducts(categoryName: categoryName);
      return ApiResult.success(response); // On success, return the data.
    } catch (error) {
      // On failure, catch the error and return the failure result.
      return ApiResult.failure(error.toString());
    }
  }
}
