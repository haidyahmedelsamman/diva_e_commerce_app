import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_up_repository.dart';

class SignUpCubit extends Cubit<SignUpState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final SignUpRepository _signUpRepository;

  SignUpCubit(this._signUpRepository) : super(const SignUpState.initial());

  Future<void> signUp() async {
    emit(const SignUpState.loading());

    try {
      final user = await _signUpRepository.signUp(
          emailController.text, passwordController.text);

      if (user != null) {
        emit(SignUpState.success(user));
      } else {
        emit(const SignUpState.error(error: 'Sign up failed'));
      }
    } catch (e) {
      emit(SignUpState.error(error: e.toString()));
    }
  }
}
