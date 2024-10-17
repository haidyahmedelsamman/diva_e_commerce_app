import 'package:flutter/material.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final int itemIndex;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.categoryName,
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
        categoryName,
        style: isSelected
            ? TextStyleManager.font14LightPrimaryRegular
            : TextStyleManager.font14PrimaryRegular,
      ),
    );
  }
}
