import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repos/home_repo.dart';

/// The HomeCubit class is responsible for managing the state of the home feature.
class HomeCubit extends Cubit<HomeState> {
  // The repository that provides data for the home feature.
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  // A list to hold the fetched categories.
  List<String?> categoriesList = [];

  // Flags and variables to handle category selection.
  bool isCategorySelected = false;
  var selectedCategoriesIndex = 0;

  /// Handles the logic for when a category is clicked.
  /// Updates the selected category index and emits the [OnCategoryClick] state.
  /// [index] is the index of the category that was clicked.
  void onCategoryClick(int index) {
    selectedCategoriesIndex = index;
    isCategorySelected = true;
    emit(HomeState.onCategoryClick(index));
  }

  /// Fetches categories from the repository and emits appropriate states.
  void getCategories() async {
    // Emit loading state
    emit(const HomeState.categoriesLoading());

    // Fetch categories from the repository
    final response = await _homeRepo.getCategories();

    response.when(
      // On success, update the categories list and emit success state.
      success: (categoriesResponse) {
        categoriesList = categoriesResponse;
        getCategoryProducts(categoriesList[selectedCategoriesIndex] ?? '');
        emit(HomeState.categoriesSuccess(categoriesResponse));
      },
      // On failure, emit error state with the error message.
      failure: (errorMessage) {
        emit(HomeState.categoriesError(errorMessage));
      },
    );
  }

  List<ProductModel> productsList = [];

  /// Fetches products of each category from the repository and emits appropriate states.
  void getCategoryProducts(String categoryName) async {
    // Emit loading state
    emit(const HomeState.categoryProductsLoading());

    // Fetch products of each cayegory from the repository
    final response = await _homeRepo.getCategoryProducts(categoryName);

    response.when(
      // On success, update the products list and emit success state.
      success: (categoryProductsResponseModel) {
        productsList = categoryProductsResponseModel;
        emit(HomeState.categoryProductsSuccess(productsList));
      },
      // On failure, emit error state with the error message.
      failure: (errorMessage) {
        emit(HomeState.categoryProductsError(errorMessage));
      },
    );
  }
}
