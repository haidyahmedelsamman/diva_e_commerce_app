import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatelessWidget {
  final List<String> categoriesList;
  const CategoriesListView({super.key, required this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError ||
          current is OnCategoryClick,
      builder: (context, state) {
        return SizedBox(
          height: 30.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().onCategoryClick(index);
                  context
                      .read<HomeCubit>()
                      .getCategoryProducts(categoriesList[index]);
                },
                child: CategoryItem(
                  categoryName: categoriesList[index],
                  isSelected:
                      context.read<HomeCubit>().selectedCategoriesIndex ==
                          index,
                  itemIndex: context.read<HomeCubit>().selectedCategoriesIndex,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
