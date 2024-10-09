import 'package:dio/dio.dart';
import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';

/// An abstract class that defines the API service for home-related endpoints.
/// It uses Retrofit for network calls and handles communication with the backend.
@RestApi(baseUrl: HomeApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  /// Fetches all categories from the API.
  @GET(HomeApiConstants.allCategories)
  Future<List<String>> getCategories();

  /// Fetches all category products from the API.
  @GET('${HomeApiConstants.categoryProductsEP}{categoryName}')
  Future<List<ProductModel>> getCategoryProducts({
    @Path("categoryName") required String categoryName,
  });
}
