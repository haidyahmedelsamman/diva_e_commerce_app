import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAccountDetailsRow extends StatelessWidget {
  const UserAccountDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: ColorsManager.lightPrimary,
          child: Text(
            'DM',
            style: TextStyleManager.font24PrimaryMedium,
          ),
        ),
        HorizontalSpace(space: 15.w),
        SizedBox(
          height: 60.r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyleManager.font16DynamicRegular,
                  ),
                  Text(
                    'Dalia Morad',
                    style: TextStyleManager.font16DynamicSemiBold,
                  ),
                ],
              ),
              Text(
                'daliamorad@gmail.com',
                style: TextStyleManager.font14DynamicRegular,
              ),
            ],
          ),
        ),
        const Expanded(child: HorizontalSpace(space: 10)),
        CustomTextButton(
          text: 'Edit',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
