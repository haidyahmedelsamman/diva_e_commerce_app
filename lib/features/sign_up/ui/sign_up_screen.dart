import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/widgets/or_divider.dart';
import 'package:diva_e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:diva_e_commerce_app/features/sign_up/ui/widgets/email_and_password_confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/string_manager.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/text_style_manager.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/row_cricle_avatar_icon.dart';

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
                  style: TextStyleManager.font24BlackRegular,
                ),
                verticalSpace(10),
                Image.asset(
                  StringManager.signUpImagePath,
                  width: 230,
                  height: 230,
                ),
                verticalSpace(10),
                const EmailAndPasswordConfirmPassword(),
                AppTextButton(
                  buttonText: StringManager.signUp,
                  onPressed: () {},
                  textStyle: TextStyleManager.font18WhiteRegular,
                ),
                const OrDivider(),
                const RowCricleAvatarIcon(),
                verticalSpace(20),
                GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoutes.signInScreenRoute);
                    },
                    child: const AlreadyHaveAccount()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
