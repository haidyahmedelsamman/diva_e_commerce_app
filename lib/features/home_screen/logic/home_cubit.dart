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
        emit(HomeState.categoriesSuccess(categoriesResponse));
      },
      // On failure, emit error state with the error message.
      failure: (errorMessage) {
        emit(HomeState.categoriesError(errorMessage));
      },
    );
  }
}
