import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String successMessage;
  const SuccessDialog({super.key, required this.successMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.check_outlined,
          color: Colors.green,
          size: 32,
        ),
      ),
      content: Text(
        successMessage,
        style: TextStyleManager.font16GreyBold,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyleManager.font14PrimaryRegular,
          ),
        ),
      ],
    );
  }
}
