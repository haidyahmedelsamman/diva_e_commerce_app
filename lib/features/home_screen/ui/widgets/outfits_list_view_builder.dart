import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_cubit.dart';
import 'package:diva_e_commerce_app/features/home_screen/logic/home_state.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/outfit_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors_manager.dart';

class OutfitsListViewBuilder extends StatelessWidget {
  const OutfitsListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoryProductsLoading ||
          current is CategoryProductsSuccess ||
          current is CategoryProductsError,
      builder: (context, state) {
        return state.maybeWhen(
            categoryProductsLoading: () {
              return Expanded(
                child: Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.primary,
                  ),
                ),
              );
            },
            categoryProductsSuccess: (productsDataList) {
              return Expanded(
                child: GridView.builder(
                  itemCount: productsDataList.length,
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
                              arguments: productsDataList[index]);
                        },
                        child: OutfitItem(
                          productModel: productsDataList[index],
                          isFavorite: index == 0 ? true : false,
                          itemIndex: index,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            categoryProductsError: (errorMessage) => Expanded(
                  child: Center(
                    child: Text(errorMessage),
                  ),
                ),
            orElse: () => const SizedBox.shrink());
      },
    );
  }
}
