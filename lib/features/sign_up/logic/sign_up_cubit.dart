import 'package:diva_e_commerce_app/features/sign_up/logic/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/sign_up_repository.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepository _signUpRepository;

  SignUpCubit(this._signUpRepository) : super(const SignUpState.initial());

  Future<void> signUp(
      String email, String password, String confirmPassword) async {
    emit(const SignUpState.loading());

    try {
      final user = await _signUpRepository.signUp(email, password);

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
