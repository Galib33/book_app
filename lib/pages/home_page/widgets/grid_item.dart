import 'package:book_app/constants/app_colors.dart';
import 'package:book_app/models/book_model.dart';
import 'package:book_app/pages/detail_page/detail_page.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_sized_boxes.dart';
import '../../../themes/app_box_decorations.dart';
import 'grid_item_image.dart';

class GridItem extends StatelessWidget {
  final int index;
  final BookModel bookModel;
  const GridItem({super.key, required this.index, required this.bookModel, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => DetailPage(
            itemIndex: index,
          ),
        ),
      ),
      child: Container(
        decoration: AppBoxDecorations.greyShadowCircular12,
        // shape: AppRoundBorders.submitButtonRARadius13,
        child: Stack(alignment: Alignment.center, children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GridItemImage(index: index),
                AppSizedBox.sizedBoxH8,
                 Text(bookModel.title),
              ],
            ),
          ),
          Visibility(
            visible: bookModel.isFavorite ==true ?true:false,
            child: const Positioned(
                bottom: 7,
                right: 7,
                child:Icon(Icons.favorite,color: AppColors.redColor,)
                ),
          )

          //     Positioned(bottom: 5,
          //     right: 5,
          //     child:Container(
          //   alignment: Alignment.center,
          //   width: 17.w,
          //   height: 17.h,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.grey.shade800,
          //   ),
          //   child: const Icon(Icons.check, color: AppColors.whiteColor, size: 15),
          // ),
          //     )
        ]),
      ),
    );
  }
}
