import 'package:diva_e_commerce_app/core/theme/padding_values.dart';
import 'package:diva_e_commerce_app/core/theme/text_style_manager.dart';
import 'package:diva_e_commerce_app/core/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class SecondaryScreenCustomScaffold extends StatelessWidget {
  final String pageTitle;

  final Widget body;
  final Widget? tailingWidget;
  const SecondaryScreenCustomScaffold({
    super.key,
    required this.body,
    required this.pageTitle,
    this.tailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              pageTitle,
              style: TextStyleManager.font24DynamicMedium,
            ),
            if (tailingWidget != null) tailingWidget!,
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PaddingValues.horizontalPadding,
          vertical: PaddingValues.verticalPadding,
        ),
        child: body,
      ),
    );
  }
}
