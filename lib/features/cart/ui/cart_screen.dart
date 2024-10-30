import 'package:diva_e_commerce_app/features/cart/ui/widgets/Cart_Top_Bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
            child: Column(
              children: [
                CartTopBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
