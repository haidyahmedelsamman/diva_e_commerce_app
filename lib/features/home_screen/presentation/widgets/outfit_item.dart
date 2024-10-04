// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diva_e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';

class OutfitItem extends StatelessWidget {
  final int itemIndex;
  final bool isFavorite;
  const OutfitItem({
    super.key,
    required this.itemIndex,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.r,
                ),
              ),
              child: Image.asset(
                'assets/images/outfit.png',
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 6.sp,
                  left: 14.sp,
                ),
                child: SvgPicture.asset(
                  'assets/svgs/heart.svg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 155.sp,
                  right: 14.sp,
                ),
                child: SvgPicture.asset(
                  'assets/svgs/cart.svg',
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.sp,
            top: 8.sp,
            right: 12.sp,
          ),
          child: Row(
            children: [
              Text(
                'Baby blue blouse',
                style: TextStyleManager.font12GrayRegular,
              ),
              const Spacer(),
              Icon(
                isFavorite ? Icons.star : Icons.star_border_outlined,
                color: isFavorite ? Colors.amber : null,
                size: 16.sp,
              ),
            ],
          ),
        ),
        verticalSpace(4),
        Padding(
          padding: EdgeInsets.only(left: 12.0.sp),
          child: const Text('500 L.E'),
        ),
      ],
    );
  }
}
