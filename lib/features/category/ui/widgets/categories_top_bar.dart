import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesTopBar extends StatelessWidget {
  const CategoriesTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => context.pushReplacementNamed(AppRoutes.homeScreenRoute),
          child: SvgPicture.asset(
            'assets/svgs/arrow_back.svg',
            height: 30.h,
            width: 30.w,
          ),
        ),
        const Spacer(),
        Text(
          "Categories",
          style: TextStyleManager.font24DynamicMedium,
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/svgs/cart_plus_fill.svg',
          height: 24.h,
          width: 24.w,
        ),
      ],
    );
  }
}
