import 'package:diva_e_commerce_app/core/logic/categories_cubit.dart';
import 'package:diva_e_commerce_app/core/network/categories_api_service.dart';
import 'package:diva_e_commerce_app/core/repos/categories_repo.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/repo/sign_up_repository.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../network/dio_factory.dart';

// GetIt is a service locator for dependency injection.
final getIt = GetIt.instance;

/// Sets up the service locator for dependency injection.
Future<void> setupGetIt() async {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  getIt
      .registerLazySingleton<SignUpRepository>(() => SignUpRepository(getIt()));

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // Dio is an HTTP client for making API calls.
  // The DioFactory is assumed to provide a preconfigured Dio instance.
  Dio dio = DioFactory.getDio();

  // Registering the CategoriesApiService as a lazy singleton in the service locator.
  // This ensures only one instance of CategoriesApiService is created, and it's provided
  // when required. The instance uses the Dio client for API interactions.
  getIt.registerLazySingleton<CategoriesApiService>(() => CategoriesApiService(dio));

  // Registering the CategoriesRepo as a lazy singleton.
  // The repository manages data and interacts with CategoriesApiService.
  // It takes an instance of CategoriesApiService as a dependency.
  getIt.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(getIt()));

  // Registering the CategoriesCubit as a factory.
  // A new instance of CategoriesCubit is created each time it's requested.
  // CategoriesCubit handles the state management for the category and home features, using CategoriesRepo.
  getIt.registerFactory<CategoriesCubit>(() => CategoriesCubit(getIt()));
}
