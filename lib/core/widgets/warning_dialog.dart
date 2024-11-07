import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

class WarningDialog extends StatelessWidget {
  final String warningMessage;
  final VoidCallback? onPressed;
  const WarningDialog({
    super.key,
    required this.warningMessage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.warning,
          color: Colors.yellow,
          size: 32,
        ),
      ),
      content: Text(
        warningMessage,
        style: TextStyleManager.font16GreyBold,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Cancel',
            style: TextStyleManager.font14PrimaryRegular,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'Ok',
            style: TextStyleManager.font14PrimaryRegular,
          ),
        ),
      ],
    );
  }
}
