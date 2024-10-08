import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/bottom_nav_bar.dart';
import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/spacing.dart';
import 'outfits_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

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
              return Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              );
            },
            categoriesSuccess: (categoriesDataList) {
              var categoriesList = categoriesDataList;
              return Expanded(
                child: Column(
                  children: [
                    CategoriesListView(categoriesList: categoriesList),
                    verticalSpace(18),
                    const OutfitsListView(),
                    verticalSpace(10),
                    const BottomNavBar(),
                  ],
                ),
              );
            },
            categoriesError: (errorHandler) => const SizedBox.shrink(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }
}
