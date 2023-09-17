import 'package:book_app/pages/home_page/widgets/row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../themes/app_box_decorations.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //! tabbar's container is in center

      child: Container(
        // alignment: Alignment.center,
        // transformAlignment: Alignment.center,
        decoration: AppBoxDecorations.greyShadowCircular12
            .copyWith(color: AppColors.textGreyColor),
        height: 37.h,
        child: SizedBox(
          // width: MediaQuery.of(context).size.width,

          child: TabBar(
            
              // indicatorSize: TabBarIndicatorSize.tab,

              // labelPadding: EdgeInsets.symmetric(horizontal:20),
              // padding: EdgeInsets.all(8),

              // labelPadding: EdgeInsets.symmetric(horizontal: 30),
              labelColor: Colors.black,
              dividerColor: Colors.black,
              indicator: AppBoxDecorations.greyShadowCircular12.copyWith(
                color: AppColors.greyColor,
              ),
              isScrollable: true,
              tabs: const [
                RowWidget(index: 0),
                RowWidget(index: 1),
                RowWidget(index: 2),
              ]),
        ),
      ),
    );
  }
}
