// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diva_e_commerce_app/core/widgets/custom_cache_network_image.dart';
import 'package:diva_e_commerce_app/core/widgets/favorite_button.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/product_name_and_price.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/models/category_products_response_model.dart';

class ProductItem extends StatelessWidget {
  final int itemIndex;
  final bool isFavorite;
  final ProductModel productModel;
  const ProductItem({
    super.key,
    required this.itemIndex,
    required this.isFavorite,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  25.r,
                ),
              ),
              child: SizedBox(
                height: 200.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: CustomCachedNetworkImage(
                      imageUrl: productModel.image ?? ''),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BlocBuilder<UserDataCubit, UserDataState>(
                builder: (context, state) {
                  return FavoriteButton(productModel: productModel);
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 160.sp,
                  right: 14.sp,
                ),
                child: SvgPicture.asset(
                  'assets/svgs/cart.svg',
                ),
              ),
            )
          ],
        ),
        ProductNameAndPrice(
          isFavorite: isFavorite,
          productModel: productModel,
        ),
      ],
    );
  }
}
