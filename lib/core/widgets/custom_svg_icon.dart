import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSVGIcon extends StatelessWidget {
  final double? size;
  final String path;
  const CustomSVGIcon({
    super.key,
    this.size,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getIconSize(),
      width: getIconSize(),
      child: SvgPicture.asset(
        fit: BoxFit.contain,
        color:
            context.appTheme.colorScheme.brightness.name == ThemeMode.light.name
                ? Colors.black
                : Colors.white,
        path,
      ),
    );
  }

  double getIconSize() {
    if (size != null) {
      return size!.r;
    } else {
      return 18.r;
    }
  }
}
