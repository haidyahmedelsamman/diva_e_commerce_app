import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors_manager.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.suffixIcon,
      this.fillColorBackground,
      this.hintStyle,
      this.obscureText,
      this.controller,
      this.keyboardType,
      required this.hintText,
      this.focusedBorder,
      this.enabledBorder,
      this.validator, this.onchanged});
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColorBackground;
  final Widget? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onchanged ,
      controller: controller,
      validator: (value) {
        return validator!(value);
      },
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.none,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 14.h, horizontal: 28.w),
        filled: true,
        fillColor: fillColorBackground ?? ColorsManager.white,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.error,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: ColorsManager.lightGrey)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: ColorsManager.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: ColorsManager.error, width: 1.3)),
        hintText: hintText,
        hintStyle: TextStyleManager.font18GreyRegular,
        suffixIcon: suffixIcon,
      ),
      style: TextStyleManager.font14PrimaryRegular,
    );
  }
}
