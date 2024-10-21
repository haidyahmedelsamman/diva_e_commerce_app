import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/home_screen/data/models/category_products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImageSlider extends StatefulWidget {
  final ProductModel productModell;
  const ProductImageSlider({super.key, required this.productModell});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430.h,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              currentIndex = index;
              return Image.network(
                widget.productModell.image ?? '',
                fit: BoxFit.fill,
              );
            },
          ),
          Positioned(
            height: 40.h,
            width: 40.w,
            top: 30.sp,
            left: 30.sp,
            child: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: SvgPicture.asset(
                'assets/svgs/arrow_back.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            height: 40.h,
            width: 40.w,
            top: 30.sp,
            right: 30.sp,
            child: GestureDetector(
              onTap: () {
                context.pop();
              },
              child: SvgPicture.asset(
                'assets/svgs/arrow_share.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 40.sp,
            left: 150.sp,
            child: SizedBox(
              height: 10.h,
              width: 150.w,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      margin: const EdgeInsets.only(left: 7),
                      duration: const Duration(milliseconds: 800),
                      height: 10.h,
                      width: index == currentIndex ? 20.w : 10.w,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? ColorsManager.primary
                            : Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
