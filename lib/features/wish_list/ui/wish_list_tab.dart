import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/widgets/product_item.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/wish_list/ui/widgets/wishlist_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class WishListTab extends StatelessWidget {
  const WishListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.canvasColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 14.sp, left: 12.sp, right: 12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WishListTopBar(),
              verticalSpace(20.h),
              BlocBuilder<UserDataCubit, UserDataState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    authenticated: (user) {
                      return buildProductsList(user.wishList);
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductsList(List<ProductModel> productsList) {
    return Expanded(
      child: GridView.builder(
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.63.sp,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(AppRoutes.productDetailsScreenRoute,
                    arguments: productsList[index]);
              },
              child: ProductItem(
                productModel: productsList[index],
                isFavorite: index == 0 ? true : false,
                itemIndex: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
