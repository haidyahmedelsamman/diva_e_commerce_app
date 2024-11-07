import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/change_user_password_listner.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/delete_user_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/profile_item_card.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/change_password_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditUserAccountScreen extends StatelessWidget {
  const EditUserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      pageTitle: 'Edit Account',
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileItemCard(
              icon: const Icon(Icons.password),
              label: 'Change password',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => getIt<UserDataCubit>(),
                      child: const ChangePasswordDialog(),
                    );
                  },
                );
              },
            ),
            ProfileItemCard(
              icon: const Icon(Icons.delete_forever),
              label: 'Delete account',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => getIt<UserDataCubit>(),
                      child: const DeleteUserDialog(),
                    );
                  },
                );
              },
            ),
            const ChangeUserPasswordListner(),
          ],
        ),
      ),
    );
  }
}
