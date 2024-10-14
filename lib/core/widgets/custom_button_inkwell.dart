import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonInkWell extends StatelessWidget {
  final Widget child;
  final double? borderRadius;
  final VoidCallback? onPressed;
  const CustomButtonInkWell({
    super.key,
    required this.child,
    this.onPressed,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Padding(
        padding: EdgeInsets.all(5.r),
        child: child,
      ),
    );
  }
}
