import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 14.sp, left: 12.sp, right: 12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text('Cart Tab'),
              verticalSpace(10.h),
            ],
          ),
        ),
      ),
    );
  }
}
