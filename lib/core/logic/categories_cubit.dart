import 'package:diva_e_commerce_app/core/logic/categories_state.dart';
import 'package:diva_e_commerce_app/core/repos/categories_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/category_products_response_model.dart';

/// The CategoriesCubit class is responsible for managing the state of the category and home features.
class CategoriesCubit extends Cubit<CategoriesState> {
  // The repository that provides data for the category and home features.
  final CategoriesRepo _categoriesRepo;

  CategoriesCubit(this._categoriesRepo)
      : super(const CategoriesState.initial());

  // A list to hold the fetched categories.
  List<String> categoriesList = [];

  List<String> categoriesImagePathList = [
    'assets/images/category_electro.png',
    'assets/images/category_jewelery.png',
    'assets/images/category_men.png',
    'assets/images/category_womens.png',
  ];

  // Flags and variables to handle category selection.
  bool isCategorySelected = false;
  var selectedCategoriesIndex = 0;

  /// Handles the logic for when a category is clicked.
  /// Updates the selected category index and emits the [OnCategoryClick] state.
  /// [index] is the index of the category that was clicked.
  void onCategoryClick(int index) {
    selectedCategoriesIndex = index;
    isCategorySelected = true;
    emit(CategoriesState.onCategoryClick(index));
  }

  bool isCategoryTabSelected = false;
  var selectedCategoriesTabIndex = 0;
  void onCategoriesTabClick(int index) {
    selectedCategoriesTabIndex = index;
    isCategoryTabSelected = true;
    emit(CategoriesState.onCategoriesTabClick(index));
  }

  void resetSelectedCategory() {
    selectedCategoriesTabIndex = 0; // Reset to the default index
    isCategoryTabSelected = false; // Reset the selection flag
    emit(const CategoriesState
        .initial()); // Emit the initial state or a custom state if needed
  }


  /// Fetches categories from the repository and emits appropriate states.
  void getCategories() async {
    // Emit loading state
    emit(const CategoriesState.categoriesLoading());

    // Fetch categories from the repository
    final response = await _categoriesRepo.getCategories();

    response.when(
      // On success, update the categories list and emit success state.
      success: (categoriesResponse) {
        categoriesList = categoriesResponse;
        getCategoryProducts(categoriesList[selectedCategoriesIndex]);
        emit(CategoriesState.categoriesSuccess(categoriesResponse));
      },
      // On failure, emit error state with the error message.
      failure: (errorMessage) {
        emit(CategoriesState.categoriesError(errorMessage));
      },
    );
  }

  List<ProductModel> productsList = [];

  /// Fetches products of each category from the repository and emits appropriate states.
  void getCategoryProducts(String categoryName) async {
    // Emit loading state
    emit(const CategoriesState.categoryProductsLoading());

    // Fetch products of each cayegory from the repository
    final response = await _categoriesRepo.getCategoryProducts(categoryName);

    response.when(
      // On success, update the products list and emit success state.
      success: (categoryProductsResponseModel) {
        productsList = categoryProductsResponseModel;
        emit(CategoriesState.categoryProductsSuccess(
            categoriesList, productsList));
      },
      // On failure, emit error state with the error message.
      failure: (errorMessage) {
        emit(CategoriesState.categoryProductsError(errorMessage));
      },
    );
  }
}
