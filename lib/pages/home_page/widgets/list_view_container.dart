import 'package:book_app/constants/app_paddings.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_functional_list.dart';
import '../../../constants/app_sized_boxes.dart';
import '../../../themes/app_box_decorations.dart';

class ListViewContainer extends StatelessWidget {
  final int index;
  final IconData iconData;

  const ListViewContainer(
      {super.key, required this.index, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: index == AppFunctionalList.functionalIconList.length - 1
            ? AppPaddings.zero
            : const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(8),
        decoration: AppBoxDecorations.greyShadowCircular12.copyWith(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(18)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: AppColors.whiteColor,
            ),
            AppSizedBox.sizedBoxW10,
            Text(
              AppFunctionalList.functionalStringList[index],
              style: const TextStyle(fontSize: 17, color: AppColors.whiteColor),
            )
          ],
        ));
  }
}
