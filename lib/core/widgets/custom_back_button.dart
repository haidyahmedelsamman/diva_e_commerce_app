import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BackButton(
      style: ButtonStyle(
        foregroundBuilder: (context, states, child) {
          return const Icon(CupertinoIcons.back);
        },
      ),
    );
  }
}
