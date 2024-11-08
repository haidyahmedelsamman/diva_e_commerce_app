import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_svg_icon.dart';
import 'package:diva_e_commerce_app/features/category/ui/categories_tab.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/home_tab.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cart/cart_tab.dart';
import '../../../wish_list/ui/wish_list_tab.dart';
import '../widgets/bottom_nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> bottomTabs = [
    BlocProvider(
      create: (context) => getIt<UserDataCubit>(),
      child: const HomeTab(),
    ),
    BlocProvider(
      create: (context) => getIt<UserDataCubit>(),
      child: const CategoriesTab(),
    ),
    BlocProvider(
      create: (context) => getIt<UserDataCubit>(),
      child: const CartTab(),
    ),
    BlocProvider(
      create: (context) => getIt<UserDataCubit>(),
      child: const WishListTab(),
    ),
  ];
  int scelectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomTabs[scelectedTab],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: ColorsManager.primary,
          showUnselectedLabels: false,
          currentIndex: scelectedTab,
          onTap: (value) {
            setState(() {
              scelectedTab = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: CustomSVGIcon(
                path: 'assets/svgs/home.svg',
              ),
              label: '',
              activeIcon: BottomNavItem(
                label: 'Home',
                imagePath: 'assets/svgs/home.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomSVGIcon(
                path: 'assets/svgs/categories.svg',
              ),
              label: '',
              activeIcon: BottomNavItem(
                label: 'Category',
                imagePath: 'assets/svgs/categories.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomSVGIcon(
                path: 'assets/svgs/cart_plus.svg',
              ),
              label: '',
              activeIcon: BottomNavItem(
                label: 'Cart',
                imagePath: 'assets/svgs/cart_plus.svg',
              ),
            ),
            BottomNavigationBarItem(
              icon: CustomSVGIcon(
                path: 'assets/svgs/heart_without_bg.svg',
              ),
              label: '',
              activeIcon: BottomNavItem(
                label: 'Favorite',
                imagePath: 'assets/svgs/heart_without_bg.svg',
              ),
            ),
          ]),
    );
  }
}
