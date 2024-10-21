import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/features/sign_in/ui/widgets/dont_have_an_account.dart';
import 'package:diva_e_commerce_app/features/sign_in/ui/widgets/email_and_password.dart';
import 'package:diva_e_commerce_app/features/sign_in/ui/widgets/sign_in_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/string_manager.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/text_style_manager.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/or_divider.dart';
import '../../../core/widgets/row_cricle_avatar_icon.dart';
import '../logic/sign_in_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(20),
              Text(
                StringManager.signIn,
                style: TextStyleManager.font24BlackRegular,
              ),
              verticalSpace(10),
              Image.asset(
                StringManager.signUpImagePath,
                width: 230,
                height: 230,
              ),
              verticalSpace(10),
              const EmailAndPassword(),
              verticalSpace(10),
              AppTextButton(
                buttonText: StringManager.signIn,
                onPressed: () {
                  validateSignIn(context);
                },
                textStyle: TextStyleManager.font18WhiteRegular,
              ),
              verticalSpace(10),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyleManager.font15PrimaryRegular,
                  ),
                ),
              ),
              // const OrDivider(),
              // const RowCricleAvatarIcon(),
              verticalSpace(20),
              GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.signUpScreenRoute);
                  },
                  child: const DontHaveAnAccount()),
              const SignInBlocListener(),
            ],
          ),
        ),
      )),
    );
  }

  void validateSignIn(BuildContext context) {
    if (context.read<SignInCubit>().formKey.currentState!.validate()) {
      context.read<SignInCubit>().signIn();
    }
  }
}
