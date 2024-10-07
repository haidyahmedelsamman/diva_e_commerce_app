import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/outfits_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/spacing.dart';
import '../widgets/ads_list_view.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/home_top_bar.dart';
import '../widgets/search_text_field_and_filter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(8),
              SearchTextFieldAndFilter(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10.sp, right: 12.sp),
                  child: SvgPicture.asset(
                    height: 50.h,
                    width: 50.w,
                    'assets/svgs/search_pink.svg',
                  ),
                ),
                hintText: 'Search here',
                validator: (value) {},
              ),
              const AdsListView(),
              verticalSpace(18),
              const CategoriesListView(),
              verticalSpace(18),
              const OutfitsListView(),
              verticalSpace(10),
              const BottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
