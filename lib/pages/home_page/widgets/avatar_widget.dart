import 'package:book_app/constants/app_paddings.dart';
import 'package:book_app/pages/input_page/input_page.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class AvatarWidget extends StatelessWidget {
  final IconData iconData;
  const AvatarWidget({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InputPage(),
            ));
      },
      child: CircleAvatar(
        backgroundColor: AppColors.greyColor,
        foregroundColor: AppColors.whiteColor,
        child: Icon(iconData),
      ),
    );
    // return ElevatedButton(

    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(

    //     shape: CircleBorder(),
    //     backgroundColor: AppColors.blackColor,
    //     foregroundColor: AppColors.whiteColor,
    //   ),
    //   child: Icon(iconData),
    // );
  }
}
