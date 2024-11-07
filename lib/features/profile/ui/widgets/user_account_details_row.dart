import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/horizontal_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_state.dart';
import 'package:diva_e_commerce_app/features/sign_up/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAccountDetailsRow extends StatelessWidget {
  const UserAccountDetailsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      buildWhen: (previous, current) => current.maybeWhen(
        authenticated: (user) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return buildUserAccountDetailsRow(user, context);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildUserAccountDetailsRow(UserModel user, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildUserCircleAvatar(user),
        HorizontalSpace(space: 15.w),
        SizedBox(
          height: 60.r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyleManager.font16DynamicRegular,
                  ),
                  Text(
                    user.personalInfo.firstName ?? '',
                    style: TextStyleManager.font16DynamicSemiBold,
                  ),
                ],
              ),
              Text(
                user.email,
                style: TextStyleManager.font14DynamicRegular,
              ),
            ],
          ),
        ),
        const Expanded(child: HorizontalSpace(space: 10)),
        CustomTextButton(
          text: 'Edit',
          textColor: Colors.white,
          onPressed: () {
            context.pushNamed(AppRoutes.editUserAccountScreenRoute);
          },
        ),
      ],
    );
  }

  CircleAvatar buildUserCircleAvatar(UserModel user) {
    var username = '';
    if (user.displayName != null && user.displayName!.length > 2) {
      username = user.displayName!;
    } else {
      username = user.email;
    }

    return CircleAvatar(
      radius: 30.r,
      backgroundColor: ColorsManager.lightPrimary,
      child: Text(
        username.substring(0, 2).toUpperCase(),
        style: TextStyleManager.font24PrimaryMedium,
      ),
    );
  }
}
