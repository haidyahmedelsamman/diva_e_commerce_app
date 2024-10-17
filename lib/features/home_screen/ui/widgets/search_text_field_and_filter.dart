import 'package:diva_e_commerce_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/colors_manager.dart';
import '../../../../core/theme/text_style_manager.dart';

class SearchTextFieldAndFilter extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const SearchTextFieldAndFilter(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 260.w,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: contentPadding ??
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                focusedBorder: focusedBorder ??
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorsManager.primary,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                enabledBorder: enabledBorder ??
                    OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: ColorsManager.lightGray,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                hintStyle: hintStyle ?? TextStyleManager.font16GrayRegular,
                hintText: hintText,
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                fillColor: backgroundColor ?? ColorsManager.white,
                filled: true,
              ),
              obscureText: isObscureText ?? false,
              style: TextStyleManager.font16BlackRegular,
              validator: (value) {
                return validator(value);
              },
            ),
          ),
          horizontalSpace(18),
          SvgPicture.asset(
            height: 52.h,
            width: 52.w,
            'assets/svgs/filter.svg',
          ),
        ],
      ),
    );
  }
}
