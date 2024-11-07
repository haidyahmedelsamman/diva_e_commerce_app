import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/product_image_slider.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/models/category_products_response_model.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocProvider(
              create: (context) => getIt<UserDataCubit>(),
              child: ProductImageSlider(productModel: productModel),
            ),
            ProductNameAndPrice(
              isFavorite: true,
              productModel: productModel,
              priceTextStyle: TextStyleManager.font20BlackSemiBold(context),
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
    );
  }
}
