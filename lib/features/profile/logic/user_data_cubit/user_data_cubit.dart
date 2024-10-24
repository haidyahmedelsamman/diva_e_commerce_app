import 'package:bloc/bloc.dart';
import 'package:diva_e_commerce_app/features/profile/data/models/user_payment_method.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit() : super(const UserDataState(userModel: null));

  void changeUserPaymentMethod(UserPaymentMethod paymentMethod) {
    if (state.userModel != null) {
      final userModel = state.userModel!.copyWith(paymentMethod: paymentMethod);
      emit(state.copyWith(userModel: userModel));
    }
  }
}
