import 'package:diva_e_commerce_app/features/home_screen/presentation/widgets/ads_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsListView extends StatelessWidget {
  const AdsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AdsItem(
            itemIndex: index,
          );
        },
      ),
    );
  }
}
