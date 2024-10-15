import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/colors_manager.dart';

class CategoriesListViewBuilder extends StatelessWidget {
  const CategoriesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          categoriesSuccess: (categoriesDataList) {
            var categoriesList = categoriesDataList;
            return CategoriesListView(categoriesList: categoriesList);
          },
          categoriesError: (errorHandler) => const SizedBox.shrink(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
