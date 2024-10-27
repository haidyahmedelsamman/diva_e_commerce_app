import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = Loading;
  const factory SignInState.success(UserModel user) = Success;
  const factory SignInState.error({required String error}) = Error;
}
