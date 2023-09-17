import 'package:book_app/constants/app_titles.dart';
import 'package:book_app/pages/home_page/widgets/avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';

class FunctionalRow extends StatelessWidget {
  const FunctionalRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,

      clipBehavior: Clip.none,
      children: [
        Center(
          child: Text(
            AppTitles.generalAppTitle,
            style: TextStyle(
                color: AppColors.greyColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp),
          ),
        ),
        const Positioned(
            right: 0, child: AvatarWidget(iconData: Icons.add))
      ],
    );
  }
}
