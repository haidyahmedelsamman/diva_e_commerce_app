import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: "Don't have an account",
          style: TextStyleManager.font18BlackRegular),
      TextSpan(text: ' Sign Up', style: TextStyleManager.font18PrimaryRegular),
    ]));
  }
}
