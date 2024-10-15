import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_button_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/spacing.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomButtonInkWell(
            borderRadius: 100,
            onPressed: () {
              context.pushNamed(AppRoutes.profileScreenRoute);
            },
            child: Image.asset(
              'assets/images/profile.png',
              width: 50.r,
              height: 50.r,
            )),
        horizontalSpace(8),
        Text(
          'Welcome, Haidy',
          style: TextStyleManager.font16BlackRegular,
        ),
        const Spacer(),
        SvgPicture.asset(
          height: 28.h,
          width: 28.w,
          'assets/svgs/notification.svg',
        ),
        horizontalSpace(16),
        SvgPicture.asset(
          height: 24.h,
          width: 24.w,
          'assets/svgs/search.svg',
        ),
      ],
    );
  }
}
