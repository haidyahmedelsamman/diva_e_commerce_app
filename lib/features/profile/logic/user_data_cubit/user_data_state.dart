import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data_state.freezed.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.initial() = _Initial;
  const factory UserDataState.loading() = _Loading;
  const factory UserDataState.success() = _Success;

  const factory UserDataState.authenticated(UserModel user) = _Authenticated;
  const factory UserDataState.error({String? errorMessage}) = _Error;
}
