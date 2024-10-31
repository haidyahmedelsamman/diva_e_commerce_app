import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_state.freezed.dart';


@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;

  const factory CategoriesState.categoriesLoading() = CategoriesLoading;

   const factory CategoriesState.categoriesSuccess(
      List<String> categoryitemList) = CategoriesSuccess;

   const factory CategoriesState.categoriesError(String errorMessage) =
      CategoriesError;
}
