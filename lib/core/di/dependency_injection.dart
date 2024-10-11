import 'package:diva_e_commerce_app/features/sign_up/data/repo/sign_up_repository.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

// GetIt is a service locator for dependency injection.
final getIt = GetIt.instance;

/// Sets up the service locator for dependency injection.
Future<void> setupGetIt() async {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  getIt
      .registerLazySingleton<SignUpRepository>(() => SignUpRepository(getIt()));

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
