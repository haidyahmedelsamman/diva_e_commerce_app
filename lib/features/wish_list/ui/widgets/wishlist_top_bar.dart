import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/theme/text_style_manager.dart';

class WishListTopBar extends StatelessWidget {
  const WishListTopBar({super.key});

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
          "Wishlist",
          style: TextStyleManager.font24BlackBold(context),
        ),
        const Spacer(),
        SizedBox(
          height: 30.h,
          width: 30.w,
        ),
      ],
    );
  }
}
