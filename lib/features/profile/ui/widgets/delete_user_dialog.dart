import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/widgets/warning_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteUserDialog extends StatelessWidget {
  const DeleteUserDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WarningDialog(
      onPressed: () {
        context.read<UserDataCubit>().deleteUser();
        context.pop();
        context.pushReplacementNamed(AppRoutes.signInScreenRoute);
      },
      warningMessage: 'You are about to delete your account forever?!',
    );
  }
}
