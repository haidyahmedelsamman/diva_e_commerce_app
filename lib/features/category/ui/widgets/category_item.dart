// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';

import '../../../../core/helpers/spacing.dart';

class CategoryItem extends StatelessWidget {
  final String? categoryName;
  final String? categoryImagePath;
  final bool isSelected;
  final int itemIndex;
  const CategoryItem({
    super.key,
    this.categoryName,
    this.categoryImagePath,
    required this.isSelected,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.0.r,
            backgroundColor: isSelected
                ? ColorsManager.primary
                : ColorsManager.lightPrimary,
            child: Image.asset(
              color: isSelected
                  ? ColorsManager.lightPrimary
                  : ColorsManager.primary,
              height: 40.h,
              categoryImagePath ?? '',
            ),
          ),
          verticalSpace(5.h),
          SizedBox(
            width: 70.w,
            child: Text(
              categoryName ?? "Item Null",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyleManager.font14BlackRegular,
            ),
          )
        ],
      ),
    );
  }
}
