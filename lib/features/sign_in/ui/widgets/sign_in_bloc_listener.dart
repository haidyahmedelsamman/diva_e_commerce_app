import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/widgets/error_dialog.dart';
import 'package:diva_e_commerce_app/core/widgets/loading_indicator.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_cubit.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_router.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Signedin || current is Signedout,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const LoadingIndicator(),
            );
          },
          signedin: (user) {
            context.read<UserDataCubit>().updateUserData(user);
            context.pop();
            context.pushNamed(AppRoutes.homeScreenRoute);
          },
          signedout: (error) {
            setupErrorState(context, error ?? '');
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => ErrorDialog(error: error),
    );
  }
}
