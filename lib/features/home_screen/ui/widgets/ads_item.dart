import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsItem extends StatelessWidget {
  final int itemIndex;

  const AdsItem({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 220.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: ColorsManager.yellow,
                borderRadius: BorderRadius.circular(16.r)),
            child: Container(
              padding: EdgeInsets.only(bottom: 6.sp, top: 4.sp, left: 22.sp),
              child: Image.asset(
                alignment: Alignment.bottomRight,
                'assets/images/ad_group.png',
              ),
            ),
          ),
          Image.asset(
            height: 220.h,
            width: 220.w,
            'assets/images/ad_woman.png',
            alignment: Alignment.bottomLeft,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
