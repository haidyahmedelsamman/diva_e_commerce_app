import 'package:diva_e_commerce_app/features/cart/ui/widgets/Cart_Top_Bar.dart';
import 'package:diva_e_commerce_app/features/cart/ui/widgets/cart_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/cart_model.dart';

class CartScreen extends StatelessWidget {
  final List<CartModel> cartItems = [
    CartModel(
        id: '1',
        name: 'name1',
        price: 200,
        quantity: 500,
        imagePath: 'assets/images/outfit.png'),
    CartModel(
        id: '2',
        name: 'name2',
        price: 300,
        quantity: 500,
        imagePath: 'assets/images/outfit.png'),
  
  ];
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
            child: Column(
              children: [
                const CartTopBar(),
           //     Expanded(child: CartListView(cartItems: cartItems)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
