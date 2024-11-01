import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/widgets/error_dialog.dart';
import 'package:diva_e_commerce_app/core/widgets/loading_indicator.dart';
import 'package:diva_e_commerce_app/core/widgets/success_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeUserPasswordListner extends StatelessWidget {
  const ChangeUserPasswordListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserDataCubit, UserDataState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const LoadingIndicator();
              },
            );
          },
          success: () {
            context.pop();
            showDialog(
              context: context,
              builder: (context) {
                return const SuccessDialog(
                    successMessage: 'Password changed succesfully');
              },
            );
          },
          error: (errorMessage) {
            context.pop();
            showDialog(
                context: context,
                builder: (context) {
                  return ErrorDialog(error: errorMessage ?? '');
                });
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
