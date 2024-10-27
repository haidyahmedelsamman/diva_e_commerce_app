import 'package:diva_e_commerce_app/core/widgets/secondary_screen_custom_scaffold.dart';
import 'package:flutter/material.dart';

class EditUserAccountScreen extends StatelessWidget {
  const EditUserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryScreenCustomScaffold(
      pageTitle: 'Edit Account',
      body: SingleChildScrollView(),
    );
  }
}
