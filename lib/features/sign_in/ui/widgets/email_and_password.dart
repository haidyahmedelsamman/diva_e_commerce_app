import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/string_manager.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
