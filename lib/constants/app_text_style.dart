import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle get columnTitleTextStyle =>
      const TextStyle(color: AppColors.whiteColor, fontSize: 18);
  static const TextStyle titleTextStyle = TextStyle(
      color: AppColors.whiteColor, fontSize: 35, fontWeight: FontWeight.bold);

  static const TextStyle whiteText = TextStyle(color: AppColors.whiteColor);

  static const TextStyle white20W600 = TextStyle(
      color: AppColors.whiteColor, fontSize: 20, fontWeight: FontWeight.w600);

  static const TextStyle whiteW500 =
      TextStyle(color: AppColors.whiteColor, fontWeight: FontWeight.w500);

  static const TextStyle textGreyW400 =
      TextStyle(color: AppColors.textGreyColor, fontWeight: FontWeight.w400);
}
