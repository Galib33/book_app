import 'package:book_app/constants/app_colors.dart';
import 'package:book_app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../constants/app_borders.dart';

class AppInputTheme {
  AppInputTheme._();

  static InputDecoration formFieldDecoration({String? labelText}) {
    return InputDecoration(
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(13)
      // ),
      counterStyle: AppTextStyle.whiteText,
      labelText: labelText,
      labelStyle: AppTextStyle.whiteW500,

      enabledBorder: AppBorders.outInputBorderR12W2Blue,
      focusedBorder: AppBorders.outInputBorderR12W2Blue,
      errorBorder: AppBorders.outInputBorderR12W2Red,
    );
  }
}
