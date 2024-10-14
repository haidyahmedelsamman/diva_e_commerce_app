import 'package:diva_e_commerce_app/features/sign_up/data/repo/sign_up_repository.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../features/home_screen/data/apis/home_api_service.dart';
import '../../features/home_screen/data/repos/home_repo.dart';
import '../../features/home_screen/logic/home_cubit.dart';
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

  // Registering the HomeApiService as a lazy singleton in the service locator.
  // This ensures only one instance of HomeApiService is created, and it's provided
  // when required. The instance uses the Dio client for API interactions.
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  // Registering the HomeRepo as a lazy singleton.
  // The repository manages data and interacts with HomeApiService.
  // It takes an instance of HomeApiService as a dependency.
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  // Registering the HomeCubit as a factory.
  // A new instance of HomeCubit is created each time it's requested.
  // HomeCubit handles the state management for the home feature, using HomeRepo.
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
