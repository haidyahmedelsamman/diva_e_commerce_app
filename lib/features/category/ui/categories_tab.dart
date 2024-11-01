import 'package:diva_e_commerce_app/core/widgets/products_list_view.dart';
import 'package:diva_e_commerce_app/features/category/ui/widgets/categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/categories_top_bar.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

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
              const CategoriesTopBar(),
              verticalSpace(12.h),
              const CategoriesList(),
              const ProductsListView()
            ],
          ),
        ),
      ),
    );
  }
}
