import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
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
        Image.asset(
          'assets/images/profile.png',
          height: 50.h,
          width: 50.w,
        ),
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
