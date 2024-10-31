import 'package:diva_e_commerce_app/features/profile/data/models/user_payment_method.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodSelectionDialog extends StatelessWidget {
  const PaymentMethodSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UserDataCubit, UserDataState, UserModel?>(
      selector: (state) {
        return state.userModel;
      },
      builder: (context, userModel) {
        if (userModel == null) {
          return const SizedBox.shrink();
        }
        return Dialog(
          child: ListView(
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            children: [
              buildRadioTile(
                context,
                UserPaymentMethod.cash,
                userModel.paymentMethod,
                'Cash on Delivery',
              ),
              buildRadioTile(
                context,
                UserPaymentMethod.credtCard,
                userModel.paymentMethod,
                'Credit Card',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildRadioTile(
    BuildContext context,
    UserPaymentMethod value,
    UserPaymentMethod groupValue,
    String title,
  ) {
    return RadioListTile<UserPaymentMethod>(
      value: value,
      groupValue: groupValue,
      onChanged: (selectedValue) {
        context.read<UserDataCubit>().changeUserPaymentMethod(value);
      },
      title: Text(title),
      splashRadius: 15,
    );
  }
}
