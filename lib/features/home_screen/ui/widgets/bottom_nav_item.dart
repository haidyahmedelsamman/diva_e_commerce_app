import 'package:diva_e_commerce_app/core/widgets/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_manager.dart';
import '../../../../core/theme/text_style_manager.dart';

class BottomNavItem extends StatelessWidget {
  final String label;
  final String imagePath;
  const BottomNavItem({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 13.h,
        bottom: 13.h,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.lightPrimary,
        borderRadius: BorderRadius.circular(
          30.r,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSVGIcon(
            path: imagePath,
            color: ColorsManager.primary,
          ),
          Text(
            label,
            style: TextStyleManager.font14PrimaryRegular,
          )
        ],
      ),
    );
  }
}
