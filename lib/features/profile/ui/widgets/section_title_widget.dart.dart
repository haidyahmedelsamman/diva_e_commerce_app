import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:flutter/material.dart';

/// This widget has a title and
class SectionTitleWidget extends StatelessWidget {
  final String title;
  const SectionTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyleManager.font18PrimaryBold,
    );
  }
}
