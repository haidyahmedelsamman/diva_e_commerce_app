import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_style_manager.dart';

class ProductColorSelector extends StatefulWidget {
  const ProductColorSelector({super.key});

  @override
  State<ProductColorSelector> createState() => _ProductColorSelectorState();
}

class _ProductColorSelectorState extends State<ProductColorSelector> {
  List<Color> colorsList = [
    ColorsManager.lightPink,
    ColorsManager.brown,
    ColorsManager.purple,
    ColorsManager.lightPurple,
    ColorsManager.mintGreen,
    ColorsManager.red
  ];
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.sp,
        right: 12.sp,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Color : ',
                    style: TextStyleManager.font16BlackSemiBold),
                TextSpan(
                    text: 'Brown', style: TextStyleManager.font16BlackRegular),
              ],
            ),
          ),
          const VerticalSpace(space: 8),
          SizedBox(
            height: 55.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colorsList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColorIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12.sp),
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: index == selectedColorIndex
                          ? Border.all(
                              color: ColorsManager.black,
                              width: 1.5.w,
                            )
                          : null,
                      color: colorsList[index],
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
