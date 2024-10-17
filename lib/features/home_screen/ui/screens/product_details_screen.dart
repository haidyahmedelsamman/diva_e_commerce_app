import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/product_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/product_color_selector.dart';
import '../widgets/product_name_and_price.dart';
import '../widgets/product_size_selector.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSlider(productModell: productModel),
              ProductNameAndPrice(
                isFavorite: true,
                productModel: productModel,
                priceTextStyle: TextStyleManager.font20BlackSemiBold,
                titleTextStyle: TextStyleManager.font16GreyRegular,
                ratingTextStyle: TextStyleManager.font16GreyRegular,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.sp,
                  top: 8.sp,
                  right: 12.sp,
                ),
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  '${productModel.description}',
                  style: TextStyleManager.font14GreykRegular,
                ),
              ),
              const VerticalSpace(space: 12),
              const ProductColorSelector(),
              const VerticalSpace(space: 12),
              const ProductSizeSelector(),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.sp,
                  top: 8.sp,
                  right: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
