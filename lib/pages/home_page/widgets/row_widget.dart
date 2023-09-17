import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_functional_list.dart';
import '../../../constants/app_sized_boxes.dart';

class RowWidget extends StatelessWidget {
  final int index;
  const RowWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      
      children: [
        Icon(
          AppFunctionalList.functionalIconList[index],
          color: AppColors.whiteColor,
        ),
        AppSizedBox.sizedBoxW10,
        Text(
          AppFunctionalList.functionalStringList[index],
          style: const TextStyle(fontSize: 17, color: AppColors.whiteColor),
        )
      ],
    );
  }
}
