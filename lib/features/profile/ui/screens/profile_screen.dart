import 'package:diva_e_commerce_app/core/widgets/custom_svg_icon.dart';
import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:diva_e_commerce_app/core/widgets/spacing/vertical_space.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/payment_method_selection_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/profile_item_card.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/section_title_widget.dart.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/theme_mode_dialog.dart';
import 'package:diva_e_commerce_app/features/profile/ui/widgets/user_account_details_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      pageTitle: 'Profile',
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
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/personal_info.svg',
          ),
          label: 'Personal information',
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
              path: 'assets/svgs/profile/payment_method.svg'),
          label: 'Payment method',
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const PaymentMethodSelectionDialog();
              },
            );
          },
        ),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/address.svg',
          ),
          label: 'Address',
        ),
        const ProfileItemCard(
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/measurment.svg',
          ),
          label: 'Measurments',
        ),
        const ProfileItemCard(
          withBottomDivider: true,
          icon: CustomSVGIcon(
            path: 'assets/svgs/profile/notification.svg',
          ),
          label: 'Notifications',
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
