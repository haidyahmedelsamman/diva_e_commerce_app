import 'package:diva_e_commerce_app/core/logic/categories_cubit.dart';
import 'package:diva_e_commerce_app/core/logic/categories_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_manager.dart';

class CategoriesListViewBuilder extends StatelessWidget {
  const CategoriesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError ||
          current is CategoryProductsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return const Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          categoryProductsSuccess: (categoriesDataList, prouductsList) {
            return SizedBox(
              height: 30.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesDataList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.read<CategoriesCubit>().onCategoryClick(index);
                      context
                          .read<CategoriesCubit>()
                          .getCategoryProducts(categoriesDataList[index]);
                    },
                    child: CategoryItem(
                      categoryName: categoriesDataList[index],
                      isSelected: context
                              .read<CategoriesCubit>()
                              .selectedCategoriesIndex ==
                          index,
                      itemIndex: context
                          .read<CategoriesCubit>()
                          .selectedCategoriesIndex,
                    ),
                  );
                },
              ),
            );
          },
          categoriesSuccess: (categoryDataList) {
            return SizedBox(
              height: 30.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryDataList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.read<CategoriesCubit>().onCategoryClick(index);
                      context
                          .read<CategoriesCubit>()
                          .getCategoryProducts(categoryDataList[index]);
                    },
                    child: CategoryItem(
                      categoryName: categoryDataList[index],
                      isSelected: context
                              .read<CategoriesCubit>()
                              .selectedCategoriesIndex ==
                          index,
                      itemIndex: context
                          .read<CategoriesCubit>()
                          .selectedCategoriesIndex,
                    ),
                  );
                },
              ),
            );
          },
          categoriesError: (errorHandler) {
            return SizedBox(child: Text(errorHandler ));
          },
          orElse: () {
            return const SizedBox(child: Text('else'));
          },
        );
      },
    );
  }
}
