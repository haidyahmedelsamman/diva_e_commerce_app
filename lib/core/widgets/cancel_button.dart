import 'package:diva_e_commerce_app/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: const Text('Cancel'),
    );
  }
}
