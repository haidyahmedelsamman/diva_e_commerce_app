import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_notifications_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsStateDialog extends StatelessWidget {
  const NotificationsStateDialog({super.key});

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
                    UserNotificationsState.on,
                    user.notificationsState,
                    'On',
                  ),
                  buildRadioTile(
                    context,
                    UserNotificationsState.off,
                    user.notificationsState,
                    'Off',
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
    UserNotificationsState value,
    UserNotificationsState groupValue,
    String title,
  ) {
    return RadioListTile<UserNotificationsState>(
      value: value,
      groupValue: groupValue,
      onChanged: (selectedValue) {
        context.read<UserDataCubit>().updateUserNotificationsState(value);
        context.pop();
      },
      title: Text(title),
      splashRadius: 15,
    );
  }
}
