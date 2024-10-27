import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodSelectionDialog extends StatelessWidget {
  const PaymentMethodSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return Dialog(
              child: ListView(
                padding: const EdgeInsets.all(15),
                shrinkWrap: true,
                children: [
                  buildRadioTile(
                    context,
                    UserPaymentMethod.cash,
                    user.paymentMethod,
                    'Cash',
                  ),
                  buildRadioTile(
                    context,
                    UserPaymentMethod.card,
                    user.paymentMethod,
                    'Card',
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
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
        context.read<UserDataCubit>().updateUserPaymentMethod(value);
        context.pop();
      },
      title: Text(title),
      splashRadius: 15,
    );
  }
}
