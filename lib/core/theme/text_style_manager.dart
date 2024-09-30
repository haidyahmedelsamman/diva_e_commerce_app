import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/font_weight_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleManager {
  static TextStyle font24BlackRegular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.black,
  );
  static TextStyle font18GreyRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.grey,
  );
  static TextStyle font14PrimaryRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.primary,
  );
  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.black,
  );
  static TextStyle font18WhiteRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.white,
  );
  static TextStyle font18BlackRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.black,
  );
}
