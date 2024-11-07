import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/cancel_button.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignoutDialog extends StatelessWidget {
  const SignoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Are you sure you want to sign out?',
              style: TextStyleManager.font16BlackRegular(context),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CancelButton(),
                CustomTextButton(
                  text: 'Signout',
                  textColor: Colors.white,
                  backgroundColor: ColorsManager.primary,
                  onPressed: () {
                    context.read<SignInCubit>().signout().then((_) {
                      // ignore: use_build_context_synchronously
                      context.pushReplacementNamed(AppRoutes.signInScreenRoute);
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
