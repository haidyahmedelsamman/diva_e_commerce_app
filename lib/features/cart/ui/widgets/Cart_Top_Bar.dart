import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/string_manager.dart';

class CartTopBar extends StatelessWidget {
  const CartTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        Text(
          StringManager.cart,
          style: TextStyleManager.font24BlackRegular,
        ),
        const Spacer(),
        Stack(
          children: [
            CircleAvatar(
              radius: 22.0.r,
              backgroundColor: ColorsManager.extraLightGrey,
              child: Center(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                  size: 16.sp,
                ),
              ),
            ),
            CircleAvatar(
              radius: 9.r,
              backgroundColor: ColorsManager.rad,
              child: Center(
                child: Text(
                  '3',
                  style: TextStyleManager.font12WhiteRegular,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
