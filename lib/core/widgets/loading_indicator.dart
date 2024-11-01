import 'package:diva_e_commerce_app/core/theme/colors_manager.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: ColorsManager.primary,
      ),
    );
  }
}
