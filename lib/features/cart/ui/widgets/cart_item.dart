import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_style_manager.dart';
import '../../data/models/cart_model.dart';

class CartItem extends StatefulWidget {
  final CartModel cartModel;
  const CartItem({super.key, required this.cartModel});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 125.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.pink, width: 2)),
      child: Row(
        children: [
          Container(
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.shade400),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.cartModel.imagePath)))),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 180.w,
                child: Text(
                  widget.cartModel.name,
                  style: TextStyleManager.font16BlackRegular,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '${widget.cartModel.price} L.E',
                style: TextStyleManager.font16BlackRegular
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: ColorsManager.primary),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.remove_outlined,
                          color: Colors.white,
                          size: 25.r,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.cartModel.quantity.toString(),
                        style: TextStyleManager.font18WhiteRegular
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25.r,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.delete_forever_rounded,
              size: 35.r,
              color: ColorsManager.primary,
            ),
          ),
        ],
      ),
    );
  }
}
