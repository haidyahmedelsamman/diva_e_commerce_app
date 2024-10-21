import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_manager.dart';
import '../../../../core/theme/text_style_manager.dart';
import '../../../../core/widgets/spacing/vertical_space.dart';

class ProductSizeSelector extends StatefulWidget {
  const ProductSizeSelector({super.key});

  @override
  State<ProductSizeSelector> createState() => _ProductSizeSelectorState();
}

class _ProductSizeSelectorState extends State<ProductSizeSelector> {
  List<String> sizesList = [
    'S',
    'M',
    'L',
  ];
  int selectedSize = 0;
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
                    text: 'Your size : ',
                    style: TextStyleManager.font16BlackSemiBold),
                TextSpan(
                    text: 'Large', style: TextStyleManager.font16BlackRegular),
              ],
            ),
          ),
          const VerticalSpace(space: 8),
          SizedBox(
            height: 55.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sizesList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                    });
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    padding: EdgeInsets.only(top: 16.sp, left: 15.sp),
                    margin: EdgeInsets.only(right: 12.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == selectedSize
                          ? ColorsManager.primary
                          : ColorsManager.lightPrimary,
                    ),
                    child: Text(
                      sizesList[index],
                      style: index == selectedSize
                          ? TextStyleManager.font14LightPrimaryRegular
                          : TextStyleManager.font14PrimaryRegular,
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
