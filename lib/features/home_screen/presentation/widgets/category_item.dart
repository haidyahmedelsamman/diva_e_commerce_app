// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int itemIndex;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.itemIndex,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: isSelected
          ? BoxDecoration(
              color: ColorsManager.primary,
              borderRadius: BorderRadius.circular(30),
            )
          : BoxDecoration(
              color: ColorsManager.lightPrimary,
              borderRadius: BorderRadius.circular(30),
            ),
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      child: Text(
        textAlign: TextAlign.center,
        'New in',
        style: isSelected
            ? TextStyleManager.font14LightPrimaryRegular
            : TextStyleManager.font14PrimaryRegular,
      ),
    );
  }
}
