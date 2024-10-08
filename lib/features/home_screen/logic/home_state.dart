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
}
