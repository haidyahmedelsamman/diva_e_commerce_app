import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.success(UserModel user) = _Success;
  const factory SignUpState.failure(String error) = _Failure;
}
