import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_in_repo.dart';

class SignInCubit extends Cubit<SignInState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final SignInRepository _signInRepository;

  SignInCubit(this._signInRepository) : super(const SignInState.initial());

  Future<void> signIn() async {
    emit(const SignInState.loading());

    try {
      final user = await _signInRepository.signIn(
          emailController.text, passwordController.text);

      if (user != null) {
        emit(SignInState.success(user));
      } else {
        emit(const SignInState.error(error: 'Sign In failed'));
      }
    } catch (e) {
      emit(SignInState.error(error: e.toString()));
    }
  }
}
