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
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(100),
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
            ],
          ),
        ),
      )),
    );
  }
}
