import 'package:diva_e_commerce_app/core/logic/categories_cubit.dart';
import 'package:diva_e_commerce_app/core/logic/categories_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          categoryProductsSuccess: (categoriesDataList,prouductsList) {
            var categoriesList = categoriesDataList;
            return CategoriesListView(categoriesList: categoriesList);
          },
          categoriesSuccess: (categoryDataList) {
             var categoriesList = categoryDataList;
            return CategoriesListView(categoriesList: categoriesList);
          
          },
          categoriesError: (errorHandler) => const SizedBox.shrink(),
          orElse: () {
            return SizedBox(child: const Text('else'));
          },
        );
      },
    );
  }
}
