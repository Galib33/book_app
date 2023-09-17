import 'package:book_app/constants/app_text_style.dart';
import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../helpers/single.dart';
import '../../../themes/app_input_theme.dart';

class InputWidget extends StatelessWidget {
  final String labelText;
  final int? maxLength;
  final int? maxLines;
  final TextEditingController controller;
  const InputWidget(
      {super.key, required this.labelText, this.maxLines, this.maxLength, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: AppColors.whiteColor,
        style: AppTextStyle.whiteText,
        maxLines: maxLines,
        maxLength: maxLength,
        controller: controller,

        // initialValue: "Title",
        decoration: AppInputTheme.formFieldDecoration(labelText: labelText));
  }
}
