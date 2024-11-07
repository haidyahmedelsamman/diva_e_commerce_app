import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/font_weight_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleManager {
  static Color dynamicTextColor(BuildContext context,
      {Color? lightColor, Color? darkColor}) {
    final theme = Theme.of(context);
    return theme.brightness == Brightness.dark
        ? (darkColor ?? Colors.white) // Default to white in dark mode
        : (lightColor ?? Colors.black); // Default to black in light mode
  }

  // Font Size 24
  static TextStyle font24BlackRegular(BuildContext context) {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font24BlackBold(BuildContext context) {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightManager.bold,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font24DynamicMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle font24PrimaryMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.primary,
  );

  //Font Size 20
  static TextStyle font20BlackSemiBold(BuildContext context) {
    return TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeightManager.semiBold,
      color: dynamicTextColor(context),
    );
  }

  // Font Size 18
  static TextStyle font18GreyRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.grey,
  );

  static TextStyle font18WhiteRegular(BuildContext context) {
    return TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font18BlackRegular(BuildContext context) {
    return TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font18PrimaryRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.primary,
  );

  static TextStyle font18PrimaryBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.primary,
  );

  static TextStyle font18DynamicRegular = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font18DynamicBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.bold,
  );

  // Font Size 16
  static TextStyle font16GreyBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.grey,
  );

  static TextStyle font16GrayRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.lightGray,
  );

  static TextStyle font16GreyRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.grey,
  );

  static TextStyle font16BlackRegular(BuildContext context) {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font16BlackSemiBold(BuildContext context) {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightManager.semiBold,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font16DynamicRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font16DynamicSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
  );

  // Font Size 15
  static TextStyle font15DynamicRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightManager.regular,
  );

  static TextStyle font15DynamicSemiBold = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightManager.semiBold,
  );

  static TextStyle font15PrimaryRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.primary,
  );

  static TextStyle font15GreyMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorsManager.grey,
  );

  // Font Size 14
  static TextStyle font14PrimaryRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.primary,
  );

  static TextStyle font14PrimaryBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.primary,
  );

  static TextStyle font14LightPrimaryRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.lightPrimary,
  );

  static TextStyle font14BlackRegular(BuildContext context) {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }

  static TextStyle font14GreykRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.grey,
  );

  static TextStyle font14DynamicRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
  );

  // Font Size 12
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font12WhiteRegular(BuildContext context) {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightManager.regular,
      color: dynamicTextColor(context),
    );
  }
}
