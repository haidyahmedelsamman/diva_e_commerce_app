import 'package:diva_e_commerce_app/core/di/dependency_injection.dart';
import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/routes/app_router.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_svg_icon.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/logic/user_data_cubit/user_data_cubit.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/address_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/notifications_state_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/payment_method_selection_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/profile_item_card.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/section_title_widget.dart.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/signout_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/theme_mode_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/user_account_details_row.dart';
import 'package:diva_e_commerce_app/features/sign_in/logic/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      pageTitle: 'Profile',
      tailingWidget: buildSignoutButton(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(space: 10.h),
            const UserAccountDetailsRow(),
            VerticalSpace(space: 15.h),
            const AccountSection(),
            VerticalSpace(space: 10.h),
            const PrivacySection(),
          ],
        ),
      ),
    );
  }

  CustomTextButton buildSignoutButton(BuildContext context) {
    return CustomTextButton(
      text: 'Signout',
      backgroundColor: Colors.red,
      textColor: Colors.white,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<SignInCubit>(),
              child: const SignoutDialog(),
            );
          },
        );
      },
    );
  }
}

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpace(space: 10.h),
        const SectionTitleWidget(title: 'Account'),
        VerticalSpace(space: 10.h),
        ProfileItemCard(
          icon: const CustomSVGIcon(
            path: 'assets/svgs/profile/personal_info.svg',
          ),
          label: 'Personal information',
          onPressed: () {
            context.pushNamed(AppRoutes.personalInfoScreen);
          },
        ),
        ProfileItemCard(
          icon: Icon(
            Icons.brush_outlined,
            size: 18.r,
          ),
          label: 'Theme mode',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const ThemeModeDialog();
              },
            );
          },
        ),
        ProfileItemCard(
          icon: const CustomSVGIcon(
            path: 'assets/svgs/profile/payment_method.svg',
          ),
          label: 'Payment method',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return BlocProvider(
                  create: (context) => getIt<UserDataCubit>(),
                  child: const PaymentMethodSelectionDialog(),
                );
              },
            );
          },
        ),
        ProfileItemCard(
          icon: const CustomSVGIcon(
            path: 'assets/svgs/profile/address.svg',
          ),
          label: 'Address',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return BlocProvider(
                  create: (context) => getIt<UserDataCubit>(),
                  child: const AddressDialog(),
                );
              },
            );
          },
        ),
        ProfileItemCard(
          icon: const CustomSVGIcon(
            path: 'assets/svgs/profile/measurment.svg',
          ),
          label: 'Measurments',
          onPressed: () {
            context.pushNamed(AppRoutes.measurmentsScreen);
          },
        ),
        ProfileItemCard(
          withBottomDivider: true,
          icon: const CustomSVGIcon(
            path: 'assets/svgs/profile/notification.svg',
          ),
          label: 'Notifications',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return BlocProvider(
                  create: (context) => getIt<UserDataCubit>(),
                  child: const NotificationsStateDialog(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class PrivacySection extends StatelessWidget {
  const PrivacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpace(space: 10.h),
        const SectionTitleWidget(title: 'Privacy'),
        VerticalSpace(space: 10.h),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/orders.svg',
          ),
          label: 'Orders',
        ),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/shield.svg',
          ),
          label: 'Security',
        ),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/privacy.svg',
          ),
          label: 'Privacy & Cookie policy',
        ),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/terms.svg',
          ),
          label: 'Terms & Conditions',
        ),
        const ProfileItemCard(
          withBottomDivider: true,
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/star.svg',
          ),
          label: 'Rating & Feedback',
        ),
      ],
    );
  }
}
