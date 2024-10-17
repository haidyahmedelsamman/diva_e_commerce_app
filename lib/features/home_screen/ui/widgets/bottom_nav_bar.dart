import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomNavItem(
          isSelected: true,
          label: 'Home',
          imagePath: 'assets/svgs/home.svg',
        ),
        BottomNavItem(
          isSelected: false,
          label: 'Categories',
          imagePath: 'assets/svgs/categories.svg',
        ),
        BottomNavItem(
          isSelected: false,
          label: 'Cart',
          imagePath: 'assets/svgs/cart_plus.svg',
        ),
        BottomNavItem(
          isSelected: false,
          label: 'Favorite',
          imagePath: 'assets/svgs/heart_without_bg.svg',
        ),
      ],
    );
  }
}
