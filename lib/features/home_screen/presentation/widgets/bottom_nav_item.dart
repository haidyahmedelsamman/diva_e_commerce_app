import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors_manager.dart';
import '../../../../core/theme/text_style_manager.dart';

class BottomNavItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final String imagePath;
  const BottomNavItem(
      {super.key,
      required this.isSelected,
      required this.label,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isSelected
          ? EdgeInsets.symmetric(
              vertical: 13.h,
              horizontal: 20.w,
            )
          : EdgeInsets.symmetric(
              vertical: 4.h,
              horizontal: 8.w,
            ),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.lightPrimary : Colors.white,
        borderRadius: BorderRadius.circular(
          30.r,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            imagePath,
            color: isSelected ? ColorsManager.primary : ColorsManager.black,
          ),
          horizontalSpace(6),
          isSelected
              ? Text(
                  label,
                  style: TextStyleManager.font14PrimaryRegular,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
