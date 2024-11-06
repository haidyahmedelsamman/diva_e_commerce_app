import 'package:diva_e_commerce_app/core/models/category_products_response_model.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteButton extends StatefulWidget {
  final ProductModel productModel;
  const FavoriteButton({super.key, required this.productModel});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isFavorite) {
          context
              .read<UserDataCubit>()
              .removeProductToWishList(widget.productModel);
        } else {
          context
              .read<UserDataCubit>()
              .addProductToWishList(widget.productModel);
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 6.sp,
          left: 14.sp,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: BlocBuilder<UserDataCubit, UserDataState>(
            builder: (context, state) {
              return state.maybeWhen(
                authenticated: (user) {
                  final newIsFavorite = user.wishList
                      .where((item) {
                        return item.id == widget.productModel.id;
                      })
                      .toList()
                      .isNotEmpty;
                  isFavorite = newIsFavorite;
                  if (newIsFavorite) {
                    return const Icon(
                      Icons.favorite,
                      color: ColorsManager.primary,
                    );
                  } else {
                    return const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    );
                  }
                },
                orElse: () => Icon(
                  Icons.favorite_border,
                  color: ColorsManager.black,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
