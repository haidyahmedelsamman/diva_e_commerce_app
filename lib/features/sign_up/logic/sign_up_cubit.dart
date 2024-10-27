import 'package:diva_e_commerce_app/features/sign_up/data/models/siginup_request_body.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_up_repository.dart';

class SignUpCubit extends Cubit<SignUpState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final SignUpRepository _signUpRepository;

  SignUpCubit(this._signUpRepository) : super(const SignUpState.initial());

  Future<void> signUp() async {
    emit(const SignUpState.loading());

    try {
      final signupRequest = SiginupRequestBody(
        email: emailController.text,
        password: passwordController.text,
        displayName: displayNameController.text,
      );
      final user = await _signUpRepository.signUp(
        signupRequest,
      );

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
