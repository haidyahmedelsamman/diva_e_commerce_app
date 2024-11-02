import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/widgets/or_divider.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:diva_e_commerce_app/features/sign_up/ui/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/string_manager.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routes/app_router.dart';
import '../../../core/theme/text_style_manager.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/row_cricle_avatar_icon.dart';
import '../logic/sign_up_cubit.dart';
import 'widgets/sign_up_bloc_listener.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  StringManager.signUp,
                  style: TextStyleManager.font24DynamicMedium,
                ),
                verticalSpace(8),
                Image.asset(
                  StringManager.signUpImagePath,
                  width: 230,
                  height: 230,
                ),
                verticalSpace(8),
                const SignupForm(),
                AppTextButton(
                  buttonText: StringManager.signUp,
                  onPressed: () {
                    validateSignUp(context);
                  },
                  textStyle: TextStyleManager.font18WhiteRegular,
                ),
                const OrDivider(),
                const RowCricleAvatarIcon(),
                verticalSpace(10),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.signInScreenRoute);
                  },
                  child: const AlreadyHaveAccount(),
                ),
                const VerticalSpace(space: 15),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().signUp();
    }
  }
}
