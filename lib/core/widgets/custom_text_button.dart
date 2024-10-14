import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_button_inkwell.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? textStyle;

  final double? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textStyle,
    this.borderRadius,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButtonInkWell(
      onPressed: onPressed,
      borderRadius: borderRadius ?? 20,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: getBorderRadius(),
          color: backgroundColor ?? ColorsManager.primary,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                TextStyleManager.font16BlackSemiBold.copyWith(
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }

  BorderRadius getBorderRadius() => BorderRadius.circular(borderRadius ?? 20);
}
