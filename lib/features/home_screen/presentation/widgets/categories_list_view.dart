import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatelessWidget {
  final List<String> categoriesList;
  const CategoriesListView({super.key, required this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryName: categoriesList[index],
            isSelected: index == 1 ? true : false,
            itemIndex: index,
          );
        },
      ),
    );
  }
}
