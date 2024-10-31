import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/user_sign_in_model.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = Loading;
  const factory SignInState.success(UserSignInModel user) = Success;
  const factory SignInState.error({required String error}) = Error;
}
