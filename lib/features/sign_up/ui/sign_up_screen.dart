import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/app_text_form_field.dart';
import 'package:diva_e_commerce_app/core/widgets/or_divider.dart';
import 'package:diva_e_commerce_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/string_manager.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theme/text_style_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(50),
              Text(
                StringManager.signUp,
                style: TextStyleManager.font24BlackRegular,
              ),
              verticalSpace(16),
              Image.asset(
                StringManager.signUpImagePath,
                width: 230,
                height: 230,
              ),
              verticalSpace(16),
              const AppTextFormField(hintText: StringManager.email),
              verticalSpace(10),
              AppTextFormField(
                hintText: StringManager.password,
                suffixIcon: Icon(
                  Icons.visibility,
                  size: 24.sp,
                ),
              ),
              verticalSpace(10),
              AppTextFormField(
                hintText: StringManager.confirmPassword,
                suffixIcon: Icon(
                  Icons.visibility,
                  size: 24.sp,
                ),
              ),
              const OrDivider(),
              CircleAvatar(
                backgroundColor: ColorsManager.white,
                radius: 30,
              ),
              verticalSpace(40),
              const AlreadyHaveAccount(),
            ],
          ),
        ),
      )),
    );
  }
}
