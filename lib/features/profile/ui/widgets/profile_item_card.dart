import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItemCard extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool withBottomDivider;
  final VoidCallback? onPressed;
  const ProfileItemCard({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.withBottomDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        children: [
          InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  icon,
                  HorizontalSpace(space: 15.w),
                  Text(
                    label,
                    style: TextStyleManager.font15DynamicSemiBold,
                  ),
                  const Expanded(child: HorizontalSpace(space: 10)),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
          if (!withBottomDivider) const Divider(),
        ],
      ),
    );
  }
}
