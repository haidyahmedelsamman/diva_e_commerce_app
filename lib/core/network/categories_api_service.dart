import 'package:dio/dio.dart';
import 'package:diva_e_commerce_app/core/network/categories_api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../models/category_products_response_model.dart';

part 'categories_api_service.g.dart';

/// An abstract class that defines the API service for home-related endpoints.
/// It uses Retrofit for network calls and handles communication with the backend.

@RestApi(baseUrl: CategoriesApiConstants.apiBaseUrl)
abstract class CategoriesApiService {
  factory CategoriesApiService(Dio dio) = _CategoriesApiService;

  /// Fetches all categories from the API.
  @GET(CategoriesApiConstants.allCategories)
  Future<List<String>> getCategories();

  /// Fetches all category products from the API.
  @GET('${CategoriesApiConstants.categoryProductsEP}{categoryName}')
  Future<List<ProductModel>> getCategoryProducts({
    @Path("categoryName") required String categoryName,
  });
}
