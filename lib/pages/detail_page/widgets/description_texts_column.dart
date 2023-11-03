import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_sized_boxes.dart';
import '../../../constants/app_text_style.dart';
import '../../../helpers/single.dart';
import '../../../models/book_model.dart';

class DescriptionTextsColumn extends StatelessWidget {
  final int index;
  const DescriptionTextsColumn({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService = single.get<BookHiveService>();
    BookModel book = bookHiveService.bookBox.getAt(index)!;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book.title,
            style: AppTextStyle.white20W600,
          ),
          AppSizedBox.sizedBoxH10,
          Text(
            book.subTitle,
            textAlign: TextAlign.justify,
            style: AppTextStyle.textGreyW400,
          ),
        ],
      ),
    );
  }
}
