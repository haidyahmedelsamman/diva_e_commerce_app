import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/category/ui/categories_tab.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../cart/cart_tab.dart';
import '../../../wish_list/wish_list_tab.dart';
import '../widgets/bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> bottomTabs = [
    const HomeTab(),
    const CategoriesTab(),
    const CartTab(),
    const WishListTab(),
  ];
  int scelectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomTabs[scelectedTab],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: ColorsManager.primary,
          unselectedItemColor: Colors.black,
          currentIndex: scelectedTab,
          onTap: (value) {
            setState(() {
              scelectedTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/home.svg',
              ),
              label: '',
              activeIcon: const BottomNavItem(
                label: 'Home',
                imagePath: 'assets/svgs/home.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/categories.svg',
              ),
              label: '',
              activeIcon: const BottomNavItem(
                label: 'Category',
                imagePath: 'assets/svgs/categories.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/cart_plus.svg',
              ),
              label: '',
              activeIcon: const BottomNavItem(
                label: 'Cart',
                imagePath: 'assets/svgs/cart_plus.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/heart_without_bg.svg',
              ),
              label: '',
              activeIcon: const BottomNavItem(
                label: 'Favorite',
                imagePath: 'assets/svgs/heart_without_bg.svg',
              ),
            ),
          ]),
    );
  }
}
