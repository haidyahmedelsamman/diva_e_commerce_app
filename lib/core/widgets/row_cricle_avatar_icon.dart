import 'package:diva_e_commerce_app/core/widgets/cricle_avatar_icon.dart';
import 'package:flutter/material.dart';

import '../constants/string_manager.dart';
import '../helpers/spacing.dart';

class RowCricleAvatarIcon extends StatelessWidget {
  const RowCricleAvatarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CricleAvatarIcon(
          iconImage: StringManager.googleIconPath,
        ),
        horizontalSpace(23),
        const CricleAvatarIcon(
          iconImage: StringManager.facebookIconPath,
        ),
      ],
    );
  }
}
