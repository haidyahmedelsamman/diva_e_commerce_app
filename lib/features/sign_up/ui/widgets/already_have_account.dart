import 'package:diva_e_commerce_app/core/constants/string_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: StringManager.alreadyHaveAnAcount,
          style: TextStyleManager.font18DynamicRegular),
      TextSpan(
          text: StringManager.signIn,
          style: TextStyleManager.font18PrimaryRegular),
    ]));
  }
}
