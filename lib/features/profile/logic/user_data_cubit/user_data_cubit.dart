// ignore_for_file: must_call_super

import 'package:bloc/bloc.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_payment_method.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(const UserDataState.initial());

  void updateUserData(UserModel user) {
    emit(
      UserDataState.authenticated(user),
    );
  }

  void updateUserPaymentMethod(UserPaymentMethod paymentMethod) {
    state.whenOrNull(
      authenticated: (user) {
        emit(
          UserDataState.authenticated(
            user.copyWith(paymentMethod: paymentMethod),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {}
}
