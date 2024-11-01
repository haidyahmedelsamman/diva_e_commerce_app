import 'package:diva_e_commerce_app/core/secure_storage/current_user_secure_storage_repository.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/siginup_request_body.dart';
import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_up_repository.dart';

class SignUpCubit extends Cubit<SignUpState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final SignUpRepository _signUpRepository;
  final CurrentUserSecureStorageRepository _currentUserSecureStorageRepository;

  SignUpCubit(this._signUpRepository, this._currentUserSecureStorageRepository)
      : super(const SignUpState.initial());

  Future<void> signUp() async {
    emit(const SignUpState.loading());

    try {
      final signupRequest = SiginupRequestBody(
        email: emailController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
        displayName: firstNameController.text,
      );
      final user = await _signUpRepository.signUp(
        signupRequest,
      );

      if (user != null) {
        await _currentUserSecureStorageRepository
            .savePassword(passwordController.text);
        emit(
          SignUpState.success(user),
        );
      } else {
        emit(const SignUpState.error(error: 'Sign up failed'));
      }
    } catch (e) {
      emit(SignUpState.error(error: e.toString()));
    }
  }
}
