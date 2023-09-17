import 'dart:io';

import 'package:book_app/services/book_hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/single.dart';

class GridItemImage extends StatelessWidget {
  final int index;
  const GridItemImage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    BookHiveService bookHiveService=single.get<BookHiveService>();
    return Hero(
      tag: '$index',
      // child: Container(
      //   // margin: AppPaddings.onlyT8,
      //   width: 150.w,
      //   height: 150.h,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(12),
      //       image: const DecorationImage(
      //           image: AssetImage("assets/images/skylinee.jpg"), fit: BoxFit.cover)),
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.file(
          File(bookHiveService.bookBox.getAt(index)!.imageUri),
          width: 150.w,
          height: 150.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
