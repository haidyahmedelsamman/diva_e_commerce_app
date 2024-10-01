import 'package:flutter/material.dart';

import '../constants/string_manager.dart';
import '../theme/colors_manager.dart';

class CricleAvatarIcon extends StatelessWidget {
  final String iconImage;
  const CricleAvatarIcon({
    super.key,
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: ColorsManager.black.withOpacity(.2),
        radius: 27,
        child: CircleAvatar(
          backgroundColor: ColorsManager.white,
          radius: 26,
          child: Image.asset(
            iconImage,
            width: 30,
          ),
        ),
      ),
    );
  }
}
