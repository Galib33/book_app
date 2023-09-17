import 'package:flutter/material.dart';

import '../constants/app_border_radiuses.dart';
import '../constants/app_colors.dart';

class AppBoxDecorations {
  AppBoxDecorations._();

  static BoxDecoration get greyShadowCircular12 => BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.0,
            blurRadius: 3,
            offset: const Offset(3.0, 3.0)),
      ],
      color: AppColors.whiteColor);

  static BoxDecoration get greyCircular5 => BoxDecoration(
        borderRadius: AppBorderRadiuses.c5,
        color: AppColors.darkGreyColor,
      );

      static BoxDecoration get lightGreyCircular5 => BoxDecoration(
        borderRadius: AppBorderRadiuses.c5,
        color: AppColors.darkGreyColor,
      );
}
