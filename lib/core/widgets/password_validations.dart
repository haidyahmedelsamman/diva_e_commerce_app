import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

import '../helpers/spacing.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('8  Characteres Minimum', hasMinLength),
        buildValidationRow('One Lower Character', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('One Upper Character', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('One Special Number ', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('One number', hasNumber),
        verticalSpace(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        Icon(
          Icons.fiber_manual_record,
          size: 10,
          color: hasValidated ? ColorsManager.green : ColorsManager.primary,
        ),
        Text(
          text,
          style: TextStyleManager.font14PrimaryRegular.copyWith(
            color: hasValidated ? ColorsManager.green : ColorsManager.primary,
          ),
        )
      ],
    );
  }
}
