import 'package:book_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../helpers/single.dart';
import '../../../services/book_hive_service.dart';

class FavoriteIconContainer extends StatefulWidget {
  final int index;

  const FavoriteIconContainer({super.key, required this.index});

  @override
  State<FavoriteIconContainer> createState() => _FavoriteIconContainerState();
}

class _FavoriteIconContainerState extends State<FavoriteIconContainer> {
  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    BookModel bookModel = bookHiveService.bookBox.getAt(widget.index)!;
    // print(bookHiveService.bookBox.getAt(widget.index)!.isFavorite);

    return GestureDetector(
      onTap: () {
        if (bookModel.isFavorite == true) {
          bookModel.isFavorite = false;
        } else {
          bookModel.isFavorite = true;
        }

        bookHiveService.updateModel(widget.index, bookModel);
        print(bookHiveService.bookBox.getAt(widget.index)!.isFavorite);
        setState(() {});
      },
      child: Container(
          height: 70.h,
          padding: AppPaddings.all8,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.greyColor),
          child: Icon(
            Icons.favorite,
            size: 40,
            color: bookModel.isFavorite == true
                ? AppColors.redColor
                : AppColors.darkGreyColor,
          )),
    );
  }
}
