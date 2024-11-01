import 'package:diva_e_commerce_app/core/secure_storage/current_user_secure_storage_repository.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_in_repository.dart';

class SignInCubit extends Cubit<SignInState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final SignInRepository _signInRepository;
  final CurrentUserSecureStorageRepository _currentUserSecureStorageRepository;

  SignInCubit(
    this._signInRepository,
    this._currentUserSecureStorageRepository,
  ) : super(const SignInState.initial());
  Future<void> signIn() async {
    emit(const SignInState.loading());

    try {
      final user = await _signInRepository.signIn(
          emailController.text, passwordController.text);

      if (user != null) {
        await _currentUserSecureStorageRepository
            .savePassword(passwordController.text);
        emit(SignInState.signedin(user));
      } else {
        emit(
          const SignInState.signedout(error: 'Sign In failed'),
        );
      }
    } catch (e) {
      emit(
        SignInState.signedout(error: e.toString()),
      );
    }
  }

  Future<void> signout() async {
    await _signInRepository.signout();
    await _currentUserSecureStorageRepository.deletePassword();
    emit(const SignInState.signedout());
  }

  void checkIfUserAuthenticated() async {
    emit(const SignInState.loading());

    final currentUser = await _signInRepository.checkIfUserAuthenticated();
    if (currentUser != null) {
      emit(SignInState.signedin(currentUser));
    }
  }
}
