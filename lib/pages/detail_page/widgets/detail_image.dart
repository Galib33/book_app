import 'dart:io';

import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_border_radiuses.dart';
import '../../../constants/app_paddings.dart';
import '../../../helpers/single.dart';

class DetailImage extends StatelessWidget {
  final int index;
  const DetailImage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService=single.get<BookHiveService>();
    return Hero(
      tag: '$index',
      child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: AppPaddings.onlyLRT338.copyWith(left: 8, right: 8),
            child: ClipRRect(
              borderRadius: AppBorderRadiuses.circularLR14,
              child: Image.file(
                File(bookHiveService.bookBox.values.toList()[index].imageUri),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
