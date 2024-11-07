import 'package:diva_e_commerce_app/features/cart/ui/widgets/cart_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/cart_model.dart';

class CartListView extends StatelessWidget {
  final List<CartModel> cartItems;
  const CartListView({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => CartItem(
          cartModel: cartItems[index],
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),
        itemCount: cartItems.length,
      ),
    );
  }
}
