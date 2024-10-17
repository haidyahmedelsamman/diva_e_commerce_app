import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/text_style_manager.dart';

class ProductNameAndPrice extends StatelessWidget {
  final ProductModel productModel;
  final bool isFavorite;
  final TextStyle? priceTextStyle;
  final TextStyle? titleTextStyle;
  final TextStyle? ratingTextStyle;

  const ProductNameAndPrice(
      {super.key,
      required this.productModel,
      required this.isFavorite,
      this.priceTextStyle,
      this.titleTextStyle, this.ratingTextStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 12.sp,
            top: 8.sp,
            right: 12.sp,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 70.w,
                child: Text(
                  productModel.title ?? 'Title',
                  style:titleTextStyle ?? TextStyleManager.font12GrayRegular,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              Icon(
                isFavorite ? Icons.star : Icons.star_border_outlined,
                color: isFavorite ? Colors.amber : null,
                size: 16.sp,
              ),
              Text(
                '${productModel.rating!.rate}',
                style:ratingTextStyle ?? TextStyleManager.font12GrayRegular,
              )
            ],
          ),
        ),
        verticalSpace(4),
        Padding(
          padding: EdgeInsets.only(left: 12.0.sp),
          child: Text(
            '${productModel.price} L.E',
            style: priceTextStyle ?? TextStyleManager.font14BlackRegular,
          ),
        ),
      ],
    );
  }
}
