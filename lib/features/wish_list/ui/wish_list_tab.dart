import 'package:diva_e_commerce_app/core/widgets/products_list_view.dart';
import 'package:diva_e_commerce_app/features/wish_list/ui/widgets/wishlist_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class WishListTab extends StatelessWidget {
  const WishListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 14.sp, left: 12.sp, right: 12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WishListTopBar(),
              verticalSpace(20.h),
               const ProductsListView(productsList: [],),
            ],
          ),
        ),
      ),
    );
  }
}
