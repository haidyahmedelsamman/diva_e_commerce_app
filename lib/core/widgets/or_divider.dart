import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors_manager.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
           Expanded(
            child: Divider(
              color: ColorsManager.grey,
              thickness: 1,
              endIndent: 10,
            ),
          ),
          Text('OR', style: TextStyleManager.font16GreyBold),
           Expanded(
            child: Divider(
              color: ColorsManager.grey,
              thickness: 1,
              indent: 10,
            ),
          ),
        ],
      ),
    );
  }
}
