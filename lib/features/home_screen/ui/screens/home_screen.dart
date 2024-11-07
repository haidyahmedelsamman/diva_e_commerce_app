import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/category/ui/categories_tab.dart';
import 'package:diva_e_commerce_app/features/home_screen/ui/widgets/home_tab.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final iconColor = isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      body: bottomTabs[scelectedTab],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: ColorsManager.primary,
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
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
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
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
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
