import 'package:diva_e_commerce_app/core/logic/categories_cubit.dart';
import 'package:diva_e_commerce_app/core/logic/categories_state.dart';
import 'package:diva_e_commerce_app/features/category/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_manager.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError ||
          current is OnCategoriesTabClick ||
          current is CategoryProductsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          categoryProductsSuccess: (categoryDataList, productsDataList) {
            var categoriesList = categoryDataList;
            var categoryImagePathList =
                context.read<CategoriesCubit>().categoriesImagePathList;
            return SizedBox(
              height: 120.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context
                          .read<CategoriesCubit>()
                          .onCategoriesTabClick(index);
                      context
                          .read<CategoriesCubit>()
                          .getCategoryProducts(categoriesList[index]);
                    },
                    child: CategoryItem(
                      categoryImagePath: categoryImagePathList[index],
                      categoryName: categoriesList[index],
                      isSelected: context
                              .read<CategoriesCubit>()
                              .selectedCategoriesTabIndex ==
                          index,
                      itemIndex: context
                          .read<CategoriesCubit>()
                          .selectedCategoriesTabIndex,
                    ),
                  );
                },
              ),
            );
          },
          categoriesLoading: () {
            return const Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          categoriesError: (errorHandler) => const SizedBox.shrink(),
          orElse: () {
            return const Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
